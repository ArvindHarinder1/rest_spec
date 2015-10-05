# ReferenceAttachment resource type



#### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ContentType|String||
|DateTimeLastModified|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
		For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|Id|String| Read-only.|
|IsInline|Boolean||
|Name|String||
|Size|Int32||

#### Relationships
None


#### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ReferenceAttachment](../api/referenceattachment_get.md) | [ReferenceAttachment](referenceattachment.md) |Read properties and relationships of referenceAttachment object.|
|[Update](../api/referenceattachment_update.md) | [ReferenceAttachment](referenceattachment.md)	|Update ReferenceAttachment object. |
|[Delete](../api/referenceattachment_delete.md) | Void	|Delete ReferenceAttachment object. |
