# contactFolder resource type

A folder that contains contacts.

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.contactfolder"
}-->

```json
{
  "displayName": "string",
  "id": "string (identifier)",
  "parentFolderId": "string"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|string|The folder's display name.|
|id|string|Unique identifier of the contact folder. Read-only.|
|parentFolderId|string|The ID of the folder's parent folder.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|childFolders|[contactFolder](contactfolder.md) collection|The collection of child folders in the folder. Navigation property. Read-only. Nullable.|
|contacts|[contact](contact.md) collection|The contacts in the folder. Navigation property. Read-only. Nullable.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get contactFolder](../api/contactfolder_get.md) | [contactFolder](contactfolder.md) |Read properties and relationships of contactFolder object.|
|[Create contactFolder](../api/contactfolder_post_childfolders.md) |[contactFolder](contactfolder.md)| Create a new contactFolder by posting to the childFolders collection.|
|[List childFolders](../api/contactfolder_list_childfolders.md) |[contactFolder](contactfolder.md) collection| Get a contactFolder object collection.|
|[Create contact](../api/contactfolder_post_contacts.md) |[contact](contact.md)| Create a new contact by posting to the contacts collection.|
|[List contacts](../api/contactfolder_list_contacts.md) |[contact](contact.md) collection| Get a contact object collection.|
|[Update](../api/contactfolder_update.md) | [contactFolder](contactfolder.md)	|Update contactFolder object. |
|[Delete](../api/contactfolder_delete.md) | None |Delete contactFolder object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "contactFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->