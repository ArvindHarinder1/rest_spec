# FileAttachment resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.FileAttachment"
}-->

```json
{
  "ContentBytes": "String",
  "ContentId": "String",
  "ContentLocation": "String",
  "ContentType": "String",
  "DateTimeLastModified": "String (timestamp)",
  "Id": "String (identifier)",
  "IsInline": true,
  "Name": "String",
  "Size": 1024
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ContentBytes|Binary||
|ContentId|String||
|ContentLocation|String||
|ContentType|String||
|DateTimeLastModified|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|Id|String| Read-only.|
|IsInline|Boolean||
|Name|String||
|Size|Int32||

### Relationships
None


### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get FileAttachment](../api/fileattachment_get.md) | [FileAttachment](fileattachment.md) |Read properties and relationships of fileAttachment object.|
|[Update](../api/fileattachment_update.md) | [FileAttachment](fileattachment.md)	|Update FileAttachment object. |
|[Delete](../api/fileattachment_delete.md) | Void	|Delete FileAttachment object. |

<!-- uuid: 6e407858-be1e-4781-90fc-c7cde56c2844
2015-10-16 23:06:05 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "FileAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->