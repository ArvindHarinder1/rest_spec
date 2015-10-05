# DirectoryObject resource type



#### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|deletionTimestamp|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|objectId|String| Read-only.|
|objectType|String||

#### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|Extensions|[Extension](extension.md) collection| Read-only.|

#### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get DirectoryObject](../api/directoryobject_get.md) | [DirectoryObject](directoryobject.md) |Read properties and relationships of directoryObject object.|
|[Create Extension](../api/directoryobject_post_extensions.md) |[Extension](extension.md)| Create a new Extension by posting to the Extensions collection.|
|[Update](../api/directoryobject_update.md) | [DirectoryObject](directoryobject.md)	|Update DirectoryObject object. |
|[Delete](../api/directoryobject_delete.md) | Void	|Delete DirectoryObject object. |
|[Checkmembergroups](../api/directoryobject_checkmembergroups.md)|String||
|[Get MemberGroups](../api/directoryobject_getmembergroups.md)|String||
|[Get MemberObjects](../api/directoryobject_getmemberobjects.md)|String||
