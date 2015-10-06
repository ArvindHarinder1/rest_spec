###
# This program reads the JSON specification files and creates the Markdown files (minus the examples). 
# Location: https://github.com/sumurthy/md_apispec
###
require 'pathname'
require 'logger'
require 'json'

module SpecMaker

	require_relative 'utils_j2m'

	def self.get_postmessage (objectName=nil)
		fullpath = JSON_SOURCE_FOLDER + objectName.downcase + '.json'
		if File.file?(fullpath)
			readObject = JSON.parse(File.read(fullpath), {:symbolize_names => true})
			# puts "#{readObject}"
			# puts "returning #{readObject[:createDescription]}"
			return readObject[:createDescription]
		end
		return ""
	end

	def self.get_syntax(methodName=nil, restpath=[])
		case methodName
		when 'auto_get', 'auto_list' 
			arr = restpath.map {|a| "GET " + a}
		when 'auto_add'
			arr = restpath.map {|a| "POST " + a}				
		when 'auto_delete'
			arr = restpath.map {|a| "DELETE " + a }
		when 'auto_put'
			arr = restpath.map {|a| "PUT " + a}				
		when 'auto_patch'
			arr = restpath.map {|a| "PATCH " + a}				
		else
			arr = restpath.map {|a| "POST " + a + "/#{methodName}"}				
		end
		return arr
	end

	# Write properties and methods to the final array.
	def self.push_property  (prop = {})

		# Add read-only and possible Enum values from the list. 		
		finalDesc = prop[:description]
		if prop[:dataType] == 'DateTimeOffset'
			finalDesc = finalDesc + TIMESTAMP_DESC	
		end
		appendEnum = ''
		if (prop[:enumName] != nil) && (@enumHash.has_key? prop[:enumName])
			appendEnum = " Possible values are: `" + @enumHash[prop[:enumName]]["options"].keys.join('`, `') + "`."
			finalDesc = finalDesc + appendEnum
		end
		finalDesc = (prop[:isReadOnly] || prop[:isKey]) ? finalDesc  + ' Read-only.' : finalDesc
		finalDesc = prop[:isNullable] ? finalDesc + ' Nullable.' : finalDesc

		# If the type is of	an object, then provide markdown link.
		if SIMPLETYPES.include? prop[:dataType] 
			dataTypePlusLink = prop[:dataType] 	
		else			
			dataTypePlusLink = "[" + prop[:dataType] + "](" + prop[:dataType].downcase + ".md)"
			# if prop[:isCollection] 
			# 	dataTypePlusLink = "[" + prop[:dataType] + "](" + prop[:dataType].chomp('[]').downcase + ".md)"
			# end
		end
		if prop[:isCollection] 
			dataTypePlusLink = dataTypePlusLink + " collection"
		end			

		@mdlines.push (PIPE + prop[:name] + PIPE + dataTypePlusLink + PIPE + finalDesc + PIPE ) + NEWLINE
	end

	# Write methods to the final array (in resource file).
	def self.push_method (method = {})
		# If the type is of	an object, then provide markdown link.
		if method[:returnType].to_s.empty?
			method[:returnType] = 'None'
		end 
		if SIMPLETYPES.include? method[:returnType] 
			dataTypePlusLink = method[:returnType]
		else	
			dataTypePlusLink = "[" + method[:returnType] + "](" + method[:returnType].downcase + ".md)"
		end
		# Add links to method. 
		restfulTask = method[:name].start_with?('get') ? ('Get ' + method[:name][3..-1]) : method[:name].capitalize
		methodPlusLink = "[" + restfulTask.strip + "](../api/" + @jsonHash[:name].downcase + "_" + method[:name].downcase + ".md)"
		@mdlines.push (PIPE + methodPlusLink + PIPE + dataTypePlusLink + PIPE + method[:description] + PIPE) + NEWLINE
		crate_method_mdfile method
	end

	# Create separate actions and functions file 
	def self.crate_method_mdfile (method = {}, autoFilename=nil)
		actionLines = []		
		# Header and description	
		if method[:displayName].empty?
			actionLines.push HEADER1 + "#{@jsonHash[:name]}: #{method[:name]}"  + TWONEWLINES
		else
			actionLines.push HEADER1 + "#{method[:displayName]}"  + TWONEWLINES			
		end

		actionLines.push "#{method[:description]}"  + NEWLINE

		if !method[:prerequisites].empty?
			actionLines.push HEADER4 + "Prerequisites" + NEWLINE
			actionLines.push method[:prerequisites] + NEWLINE	
		end 

		### HTTP request
		# Select only the keys (that contains the REST path) for which the value (display or not flag)
		# is set to true. 
		#
		actionLines.push HEADER4 + "HTTP request" + NEWLINE		
		actionLines.push '<!-- { "blockType": "ignored" } -->' + NEWLINE
		actionLines.push '```http' + NEWLINE
		if @jsonHash[:restPath].length > 0
			httpSyntax = get_syntax(method[:name], @jsonHash[:restPath].select { |_, v| v }.keys)
			actionLines.push httpSyntax.join("\n")
		else
			actionLines.push "to be completed...."
		end

		actionLines.push NEWLINE + '```' + NEWLINE

		#Query parameters 
		if method[:name] == 'auto_get' || method[:name] == 'auto_list'
			#Handle Query Params:::
		end

		#Request headers  
		actionLines.push HEADER4 + "Request headers" + NEWLINE
		actionLines.push HTTP_HEADER
		actionLines.push TABLE_2ND_LINE
		actionLines.push HTTP_HEADER_SAMPLE + NEWLINE
		actionLines.push NEWLINE
		
		#Request body
		actionLines.push HEADER4 + "Request body" + NEWLINE
	
		# Provide parameters: 
		if method[:parameters] !=nil && method[:parameters].length > 0
			if method[:isFunction]
				actionLines.push "In the request URL, provide following query parameters with values." + TWONEWLINES
			else
				actionLines.push "In the request body, provide a JSON object with the following parameters." + TWONEWLINES				
			end
			actionLines.push PARAM_HEADER + TABLE_2ND_LINE 
			method[:parameters].each do |param|
				# Append optional and enum possible values (if applicable).
				finalPDesc = param[:isRequired] ? param[:description] : 'Optional. ' + param[:description]
				appendEnum = ''
				if (param[:enumName] != nil) && (@enumHash.has_key? param[:enumName])

					if @enumHash[param[:enumName]].values[0] == "" || @enumHash[param[:enumName]].values[0] == nil
						appendEnum = " " + " Possible values are: " + @enumHash[param[:enumName]].keys.join(', ')  
					else
						appendEnum = " Possible values are: " + @enumHash[param[:enumName]].map{|k,v| "`#{k}` #{v}"}.join(',')
					end
					finalPDesc = finalPDesc + appendEnum
				end
				actionLines.push (PIPE + param[:name] + PIPE + param[:dataType] + PIPE + finalPDesc + PIPE) + NEWLINE	
			end
		else
			case method[:name] 
			when 'auto_post'
				actionLines.push "In the request body, supply a JSON representation of [#{method[:returnType]}](../resources/#{method[:returnType].downcase}.md) object." + NEWLINE
				actionLines.push NEWLINE				
			when 'auto_delete'
				actionLines.push "Do not supply a request body for this method." + NEWLINE
				actionLines.push NEWLINE
			end
		end

		actionLines.push NEWLINE

		#Response body
		actionLines.push HEADER4 + "Response" + NEWLINE

		if !method[:returnType].nil?
			if SIMPLETYPES.include? method[:returnType] 
				dataTypePlusLink = method[:returnType]
			else						
				dataTypePlusLink = "[" + method[:returnType] + "](../resources/" + method[:returnType].downcase + ".md)"
			end
		else
			dataTypePlusLink = 'none'
		end

		if method[:returnType].nil?
			actionLines.push "If successful, this method returns `#{method[:httpSuccessCode]}, #{HTTP_CODES[method[:httpSuccessCode]]}` response code. It does not return anything in the response body."  + NEWLINE
		else
			trueReturn = dataTypePlusLink
			trueReturn = trueReturn + ' collection' if method[:isReturnTypeCollection] 
			actionLines.push "If successful, this method returns `#{method[:httpSuccessCode]}, #{HTTP_CODES[method[:httpSuccessCode]]}` response code and #{trueReturn} object in the response body."  + NEWLINE
		end

		# Write example files
		# begin
			case method[:name]
			when 'auto_post'
				#puts '1---- '
			
				example_lines = File.readlines(File.join(JSON_EXAMPLE_FOLDER + (method[:returnType] + '_' + method[:name]).downcase + ".md"))
				#puts '2---- '
			else
				example_lines = File.readlines(File.join(JSON_EXAMPLE_FOLDER + (@resource.downcase + '_' + method[:name]).downcase + ".md"))
			end
			if example_lines.length > 1
				actionLines.push NEWLINE
				example_lines.each do |line|
					actionLines.push line
				end
			end
		# rescue => err
		# 	@logger.error("....Example File does not exist for: #{@resource}, ")
		# end

		# Write the output file. 
		if autoFilename
			fileName = autoFilename
		else	
			fileName = "#{@jsonHash[:name].downcase}_#{method[:name].downcase}.md"
		end
		outfile = MARKDOWN_API_FOLDER + fileName

		file=File.new(outfile,'w')
		actionLines.each do |line|
			file.write line
		end		
		@method_files_created = @method_files_created + 1
	end

	def self.create_get_method
		getMethodLines = []
		# Header and description
		realHeader = @jsonHash[:isCollection] ? ('List ' + @jsonHash[:collectionOf]) : ('Get ' + @jsonHash[:name])
		getMethodLines.push HEADER1 + realHeader + TWONEWLINES

		if @jsonHash[:isCollection] 
			getMethodLines.push "Retrieve a list of #{@jsonHash[:collectionOf].downcase} objects."  + NEWLINE
		else
			getMethodLines.push "Retrieve the properties and relationships of #{@jsonHash[:name].downcase} object."  + NEWLINE
		end

		# HTTP request
		getMethodLines.push HEADER4 + "HTTP request" + NEWLINE
		getMethodLines.push '<!-- { "blockType": "ignored" } -->' + NEWLINE

		getMethodLines.push '```http' + NEWLINE
		httpGetArray = @jsonHash[:restPath].map {|a| "GET " + a}
		getMethodLines.push httpGetArray.join("\n") + NEWLINE
		getMethodLines.push  '```' + TWONEWLINES

		#Query parameters 
		getMethodLines.push HEADER4 + "Optional query parameters" + NEWLINE
		getMethodLines.push "You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call." + NEWLINE

		#Request headers  
		getMethodLines.push HEADER4 + "Request headers" + NEWLINE
		getMethodLines.push "| Name       | Type | Description|" + NEWLINE
		getMethodLines.push "|:-----------|:------|:----------|" + NEWLINE
		getMethodLines.push HTTP_HEADER_SAMPLE + NEWLINE
		getMethodLines.push NEWLINE

		#Request body
		getMethodLines.push HEADER4 + "Request body" + NEWLINE
		getMethodLines.push "Do not supply a request body for this method." + NEWLINE

		#Response body
		getMethodLines.push HEADER4 + "Response" + NEWLINE
		if @jsonHash[:isCollection] 
			getMethodLines.push "If successful, this method returns a `200 OK` response code and collection of [#{@jsonHash[:collectionOf]}](../resources/#{@jsonHash[:collectionOf].downcase}.md) objects in the response body."  + NEWLINE
		else
			getMethodLines.push "If successful, this method returns a `200 OK` response code and [#{@jsonHash[:name]}](../resources/#{@jsonHash[:name].downcase}.md) object in the response body."  + NEWLINE
		end

		#Example
		begin
			example_lines = File.readlines(File.join(JSON_EXAMPLE_FOLDER + (@jsonHash[:name].downcase + '_' + "auto_get" + ".md")))
			if example_lines.length > 1
				getMethodLines.push NEWLINE
				example_lines.each do |line|
					getMethodLines.push line
				end
			end
		rescue => err
			@logger.error("....Get Example File does not exist for: #{@resource}, ")
		end

		# Write the output file. 
		fileName = @jsonHash[:isCollection] ? "#{@jsonHash[:name].downcase}_list.md" : "#{@jsonHash[:name].downcase}_get.md"
		outfile = MARKDOWN_API_FOLDER + fileName
		file=File.new(outfile,'w')
		getMethodLines.each do |line|
			file.write line
		end
		@get_list_files_created = @get_list_files_created + 1
	end

	def self.create_patch_method (propreties=[])
		patchMethodLines = []

		# Header and description	
		patchMethodLines.push HEADER1 + "Update #{@jsonHash[:name]}"  + TWONEWLINES
		if @jsonHash[:updateDescription].empty?
			patchMethodLines.push "Update the properties of #{@jsonHash[:name].downcase} object."  + NEWLINE
		else
			patchMethodLines.push "#{@jsonHash[:updateDescription]}"  + NEWLINE			
		end
		# HTTP request
		patchMethodLines.push HEADER4 + "HTTP request" + NEWLINE
		patchMethodLines.push '<!-- { "blockType": "ignored" } -->' + NEWLINE
		patchMethodLines.push '```http' + NEWLINE
		httpPatchArray = @jsonHash[:restPath].map {|a| "PATCH " + a}
		patchMethodLines.push httpPatchArray.join("\n") + NEWLINE
		patchMethodLines.push  '```' + TWONEWLINES

		#Request headers  
		patchMethodLines.push HEADER4 + "Optional request headers" + NEWLINE
		patchMethodLines.push "| Name       | Type | Description|" + NEWLINE
		patchMethodLines.push "|:-----------|:------|:----------|" + NEWLINE
		patchMethodLines.push HTTP_HEADER_SAMPLE  + NEWLINE
		patchMethodLines.push NEWLINE
		
		#Request body
		patchMethodLines.push HEADER4 + "Request body" + NEWLINE
		patchMethodLines.push "In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed." + NEWLINE
		patchMethodLines.push NEWLINE

		patchMethodLines.push PROPERTY_HEADER + TABLE_2ND_LINE 
		propreties.each do |prop|
			if !prop[:isReadOnly]
		   		finalDesc = prop[:description]
				appendEnum = ''
				if (prop[:enumName] != nil) && (@enumHash.has_key? prop[:enumName])
					if @enumHash[prop[:enumName]].values[0] == "" || @enumHash[prop[:enumName]].values[0] == nil
						appendEnum = " Possible values are: `" + @enumHash[prop[:enumName]].keys.join('`, `') + "`."
					else
						appendEnum = " Possible values are: " + @enumHash[prop[:enumName]].map{|k,v| "`#{k}` #{v}"}.join(',') 
					end
					finalDesc = finalDesc + appendEnum
				end				
				patchMethodLines.push (PIPE + prop[:name] + PIPE + prop[:dataType]  + PIPE + finalDesc + PIPE ) + NEWLINE
			end
		end
		patchMethodLines.push NEWLINE

		#Response body
		patchMethodLines.push HEADER4 + "Response" + NEWLINE
		patchMethodLines.push "If successful, this method returns a `200 OK` response code and updated [#{@jsonHash[:name]}](../resources/#{@jsonHash[:name].downcase}.md) object in the response body."  + NEWLINE

		#Example
		begin

			example_lines = File.readlines(File.join(JSON_EXAMPLE_FOLDER + (@jsonHash[:name].downcase + '_' + "auto_patch" + ".md")))


			if example_lines.length > 1
				patchMethodLines.push NEWLINE
				example_lines.each do |line|
					patchMethodLines.push line
				end
			end
		rescue => err
			@logger.error("....Patch Example File does not exist for: #{@resource}, ")
		end

		# Write the output file. 
		fileName = "#{@jsonHash[:name].downcase}_update.md"  
		outfile = MARKDOWN_API_FOLDER + fileName
		file=File.new(outfile,'w')
		patchMethodLines.each do |line|
			file.write line
		end
		@patch_files_created = @patch_files_created + 1

	end

	# Conversion to specification 
	def self.convert_to_spec (item=nil)
		@mdlines = []
		isPost = nil
		@jsonHash = JSON.parse(item, {:symbolize_names => true})
		
		# Obtain the resource name. 
		@resource = @jsonHash[:name]
		if @jsonHash[:isEntitySet] 
			@ientityset = @ientityset + 1
			return 
		end

		@logger.debug("")	
		@logger.debug("...............Report for: #{@resource}...........")	
		puts "--> #{@resource}"

		propreties = @jsonHash[:properties]
		if propreties && propreties.length > 1 
			propreties = propreties.sort_by { |v| v[:name] }
		end

		methods = @jsonHash[:methods]
		if methods != nil && methods.length > 1 
			methods = methods.sort_by { |v| v[:name] }
		end

		# Header and description		
		@mdlines.push HEADER1 + @jsonHash[:name] + ' resource type' + TWONEWLINES
		@mdlines.push @jsonHash[:description] + TWONEWLINES

		# Determine if there is/are: relations, properties and methods. 
		isRelation, isProperty, isMethod, patchable = false, false, false, false 

		propreties.each do |prop|
			if !prop[:isRelationship]
			   isProperty = true
			   if !prop[:isReadOnly] && @jsonHash[:allowPatch]
			   	  patchable = true
			   end
			end
			if prop[:isRelationship]
			   isRelation = true
			   if prop[:isCollection] && prop[:allowPostToCollection]
			   		isPost = true
			   end
			end
		end


		if methods 
			isMethod = true
		end

		# Header and description		
		if isProperty || isRelation 
			@mdlines.push HEADER4 + 'JSON representation' + TWONEWLINES
			@mdlines.push 'Here is a JSON representation of the resource' + TWONEWLINES
			@mdlines.push get_json_model_pretext(@jsonHash[:name],propreties) + TWONEWLINES
			@mdlines.push "```json" + NEWLINE
			@mdlines.push get_json_model(propreties) + TWONEWLINES
			@mdlines.push "```" + NEWLINE			
		end

		@logger.debug("....Is there: property?: #{isProperty}, relationship?: #{isRelation}, method?: #{isMethod} ..........")	

		# Add property table. 	
		@mdlines.push HEADER4 + 'Properties' + NEWLINE
		if isProperty
			@mdlines.push PROPERTY_HEADER + TABLE_2ND_LINE 
			propreties.each do |prop|
				if !prop[:isRelationship]
					@logger.debug("....Processing property: #{prop[:name]} ..........")	
				   push_property prop
				end
			end
			if !@jsonHash[:propertyNotes].empty?
				@mdlines.push NEWLINE + "**Note:** #{@jsonHash[:propertyNotes]}" + NEWLINE
			end
		else
			@mdlines.push "None"  + NEWLINE
		end		

		# Add Relationship table. 
		if !@jsonHash[:isComplexType]
			@mdlines.push NEWLINE
			@mdlines.push HEADER4 + 'Relationships' + NEWLINE
			if isRelation
				@mdlines.push RELATIONSHIP_HEADER + TABLE_2ND_LINE 
				propreties.each do |prop|
					if prop[:isRelationship]
						@logger.debug("....Processing relationship: #{prop[:name]} ..........")		
					   push_property prop
					end
				end
				if !@jsonHash[:relationshipNotes].empty?
					@mdlines.push NEWLINE + "**Note:** #{@jsonHash[:relationshipNotes]}" + NEWLINE
				end			
			else
				@mdlines.push "None"  + TWONEWLINES
			end		
		end
		# Add method table. 
		if !@jsonHash[:isComplexType]
			@mdlines.push NEWLINE + HEADER4 + 'Tasks' + NEWLINE

			if isMethod || isProperty || isPost || @jsonHash[:allowDelete]
				@mdlines.push NEWLINE + TASKS_HEADER + TABLE_2ND_LINE 
			end
			if isProperty && !@jsonHash[:isComplexType]
				if @jsonHash[:isCollection]
					returnLink = "[" + @jsonHash[:collectionOf] + "](" + @jsonHash[:collectionOf].downcase + ".md)"			
					@mdlines.push "|[List](../api/#{@jsonHash[:name].downcase}_list.md) | #{returnLink} [] |Get #{uncapitalize @jsonHash[:collectionOf]} object collection. |" + NEWLINE
				else
					returnLink = "[" + @jsonHash[:name] + "](" + @jsonHash[:name].downcase + ".md)"			
					@mdlines.push "|[Get #{@jsonHash[:name]}](../api/#{@jsonHash[:name].downcase}_get.md) | #{returnLink} |Read properties and relationships of #{uncapitalize @jsonHash[:name]} object.|" + NEWLINE
				end
				create_get_method
			end

			# Run through all the collection relationships and add a task for posting 
			# to the right resouce to create the object.
			# Based on the data type, the name of the API varies. 
			if isPost			
				propreties.each do |prop|
					if prop[:isRelationship] && prop[:isCollection] && prop[:allowPostToCollection]
						if SIMPLETYPES.include?(prop[:dataType]) || 
								POST_NAME_MAPPING.include?(prop[:dataType].downcase)
							useName = prop[:name].chomp('s')
							postName = "Create " + useName
						else
							useName = prop[:dataType]					
							postName = "Create " + useName
						end

						postLink = "../api/#{@jsonHash[:name].downcase}_post_#{prop[:name].downcase}.md"					
						if SIMPLETYPES.include? prop[:dataType]
							returnLink = prop[:dataType]
						else	
							returnLink = "[" + prop[:dataType] + "](" + prop[:dataType].downcase + ".md)"
						end					
						@mdlines.push "|[#{postName}](#{postLink}) |#{returnLink}| Create a new #{useName} by posting to the #{prop[:name]} collection.|" + NEWLINE				
						mtd = deep_copy(@struct[:method]) 

						mtd[:name] = 'auto_post'
						mtd[:displayName] = postName
						mtd[:returnType] = prop[:dataType]
						postDescription = get_postmessage(prop[:dataType])
						if postDescription.empty?
							mtd[:description] = "Use this API to create a new #{useName}."
						else
							mtd[:description] = postDescription
						end
						mtd[:parameters] = nil					
						mtd[:httpSuccessCode] = '201'
					    crate_method_mdfile(mtd, "#{@jsonHash[:name].downcase}_post_#{prop[:name].downcase}.md")
					end
				end			
			end

			if patchable
				returnLink = "[" + @jsonHash[:name] + "](" + @jsonHash[:name].downcase + ".md)"			
				@mdlines.push "|[Update](../api/#{@jsonHash[:name].downcase}_update.md) | #{returnLink}	|Update #{@jsonHash[:name]} object. |" + NEWLINE
				create_patch_method propreties
				# mtd = deep_copy(@struct[:method]) 
				# mtd[:name] = 'auto_patch'
				# mtd[:displayName] = 'Update'
				# mtd[:returnType] = @jsonHash[:name]
				# mtd[:description] = "Update @jsonHash[:name]."
				# mtd[:parameters] = nil
				# mtd[:httpSuccessCode] = '200'			
				# crate_method_mdfile(mtd, "#{@jsonHash[:name].downcase}_update.md")
			end

			if @jsonHash[:allowDelete]
				@mdlines.push "|[Delete](../api/#{@jsonHash[:name].downcase}_delete.md) | Void	|Delete #{@jsonHash[:name]} object. |" + NEWLINE
				mtd = deep_copy(@struct[:method]) 
				mtd[:displayName] = 'Delete'
				mtd[:name] = 'auto_delete'
				
				if @jsonHash[:deleteDescription].empty?
					mtd[:description] = mtd[:description] = "Delete #{@jsonHash[:name]}."
				else
					mtd[:description] = @jsonHash[:deleteDescription]
				end				
				mtd[:httpSuccessCode] = '204'			
				mtd[:parameters] = nil			
				crate_method_mdfile(mtd, "#{@jsonHash[:name].downcase}_delete.md")
			end

			if isMethod
				methods.each do |mtd|
					@logger.debug("....Processing method: #{mtd[:name]} ..........")					
					push_method mtd
				end
			end
			if !isProperty && !isMethod && !isPost
				@mdlines.push "None"  + TWONEWLINES
			end	

			if !@jsonHash[:methodNotes].empty?
				@mdlines.push NEWLINE + "**Note:** #{@jsonHash[:methodNotes]}" + NEWLINE
			end
		end

		# Write the output file. 
		outfile = MARKDOWN_RESOURCE_FOLDER + @resource.downcase + '.md'
		file=File.new(outfile,'w')
		@mdlines.each do |line|
			file.write line
		end

		@resources_files_created = @resources_files_created + 1

	end

	##### 
	# Main loop. Process each JSON files.
	# 
	###
	processed_files = 0
	Dir.foreach(JSON_SOURCE_FOLDER) do |item|
		next if item == '.' or item == '..'
		fullpath = JSON_SOURCE_FOLDER + '/' + item.downcase

		if File.file?(fullpath)
			convert_to_spec File.read(fullpath)
			processed_files = processed_files + 1
		end
	end

	puts ""
	puts "*** OK. Processed #{processed_files} input files. Check #{File.expand_path(LOG_FOLDER)} folder for results. ***"
	puts "*** @resources_files_created #{@resources_files_created}"
	puts "*** @get_list_files_created #{@get_list_files_created} "
	puts "*** @patch_files_created #{@patch_files_created}"
	puts "*** @method_files_created #{@method_files_created}"
	puts "*** @ientityset #{@ientityset}"
end