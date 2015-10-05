# ItemAttachment resource type



#### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ContentType|String||
|DateTimeLastModified|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|Id|String| Read-only.|
|IsInline|Boolean||
|Name|String||
|Size|Int32||

#### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|Extensions|[Extension](extension.md) collection| Read-only.|
|Item|[OutlookItem](outlookitem.md)| Read-only.|

#### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ItemAttachment](../api/itemattachment_get.md) | [ItemAttachment](itemattachment.md) |Read properties and relationships of itemAttachment object.|
|[Create Extension](../api/itemattachment_post_extensions.md) |[Extension](extension.md)| Create a new Extension by posting to the Extensions collection.|
|[Update](../api/itemattachment_update.md) | [ItemAttachment](itemattachment.md)	|Update ItemAttachment object. |
|[Delete](../api/itemattachment_delete.md) | Void	|Delete ItemAttachment object. |
