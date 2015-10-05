# ContactFolder resource type



#### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|DisplayName|String||
|Id|String| Read-only.|
|ParentFolderId|String||

#### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|ChildFolders|[ContactFolder](contactfolder.md) collection| Read-only.|
|Contacts|[Contact](contact.md) collection| Read-only.|
|Extensions|[Extension](extension.md) collection| Read-only.|

#### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ContactFolder](../api/contactfolder_get.md) | ContactFolder |Read properties and relationships of contactFolder object.|
|[Create ContactFolder]((../api/contactfolder_post_childfolders.md)) |ContactFolder| Create a new ContactFolder by posting to the ChildFolders collection.|
|[Create Contact]((../api/contactfolder_post_contacts.md)) |Contact| Create a new Contact by posting to the Contacts collection.|
|[Create Extension]((../api/contactfolder_post_extensions.md)) |Extension| Create a new Extension by posting to the Extensions collection.|
|[Update](../api/contactfolder_update.md) | ContactFolder	|Update ContactFolder object. |
|[Delete](../api/contactfolder_delete.md) | ContactFolder	|Delete ContactFolder object. |
