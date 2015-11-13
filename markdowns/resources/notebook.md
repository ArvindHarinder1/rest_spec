# notebook resource type



### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.notebook"
}-->

```json
{
  "createdBy": "string",
  "createdTime": {"@odata.type": "microsoft.graph.dateTimeOffset"},
  "id": "string (identifier)",
  "isDefault": true,
  "isShared": true,
  "lastModifiedBy": "string",
  "lastModifiedTime": {"@odata.type": "microsoft.graph.dateTimeOffset"},
  "links": {"@odata.type": "microsoft.graph.notebookLinks"},
  "name": "string",
  "sectionGroupsUrl": "string",
  "sectionsUrl": "string",
  "self": "string",
  "userRole": {"@odata.type": "microsoft.graph.userRole"}
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|string|The user who created the notebook.|
|createdTime|[dateTimeOffset](datetimeoffset.md)|The date and time when the notebook was created.|
|id|string|The unique identifier of the notebook. Read-only.|
|isDefault|boolean|Indicates whether this is the user's default notebook.|
|isShared|boolean|Indicates whether the notebook is shared. If true, the contents of the notebook can be seen by people other than the owner.|
|lastModifiedBy|string|The user who last modified the notebook.|
|lastModifiedTime|[dateTimeOffset](datetimeoffset.md)|The date and time when the notebook was last modified.|
|links|[notebookLinks](notebooklinks.md)|The value of oneNoteClientURL can be used to open the notebook using the OneNote native client app if it's installed. The value of oneNoteWebURL can be used to open the web-browser based OneNote Online client.|
|name|string|The name of the notebook.|
|sectionGroupsUrl|string|The URL for the sectionGroups navigation property, which returns all the section groups in the notebook.|
|sectionsUrl|string|The URL for the sections navigation property, which returns all the sections in the notebook.|
|self|string|The endpoint where you can get details about the notebook.|
|userRole|[userRole](userrole.md)|One of three values: Owner, Contributor, or Reader. Owner represents owner-level access to the notebook. Contributor represents read/write access to the notebook. Reader represents read-only access to the notebook.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|sectionGroups|[sectionGroup](sectiongroup.md) collection|The section groups in the notebook. Can be navigated to using the sectionGroupsUrl property or expanded in a GET request. Read-only. Nullable.|
|sections|[section](section.md) collection|The sections in the notebook. Can be navigated to using the sectionsUrl property or expanded in a GET request. Read-only. Nullable.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get notebook](../api/notebook_get.md) | [notebook](notebook.md) |Read properties and relationships of notebook object.|
|[Create sectionGroup](../api/notebook_post_sectiongroups.md) |[sectionGroup](sectiongroup.md)| Create a new sectionGroup by posting to the sectionGroups collection.|
|[List sectionGroups](../api/notebook_list_sectiongroups.md) |[sectionGroup](sectiongroup.md) collection| Get a sectionGroup object collection.|
|[Create section](../api/notebook_post_sections.md) |[section](section.md)| Create a new section by posting to the sections collection.|
|[List sections](../api/notebook_list_sections.md) |[section](section.md) collection| Get a section object collection.|
|[Update](../api/notebook_update.md) | [notebook](notebook.md)	|Update notebook object. |
|[Delete](../api/notebook_delete.md) | None |Delete notebook object. |
|[copyNotebook](../api/notebook_copynotebook.md)|[copyNotebookModel](copynotebookmodel.md)||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notebook resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->