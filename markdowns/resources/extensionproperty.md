# ExtensionProperty resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.extensionproperty"
}-->

```json
{
  "appDisplayName": "String-value",
  "dataType": "String-value",
  "deletionTimestamp": "String (timestamp)",
  "isSyncedFromOnPremises": true,
  "name": "String-value",
  "objectId": "String-value (identifier)",
  "objectType": "String-value",
  "targetObjects": [
    "String-value"
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appDisplayName|String||
|dataType|String||
|deletionTimestamp|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|isSyncedFromOnPremises|Boolean||
|name|String||
|objectId|String| Read-only.|
|objectType|String||
|targetObjects|String collection||

### Relationships
None


### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ExtensionProperty](../api/extensionproperty_get.md) | [ExtensionProperty](extensionproperty.md) |Read properties and relationships of extensionProperty object.|
|[Update](../api/extensionproperty_update.md) | [ExtensionProperty](extensionproperty.md)	|Update ExtensionProperty object. |
|[Delete](../api/extensionproperty_delete.md) | Void	|Delete ExtensionProperty object. |
|[Checkmembergroups](../api/extensionproperty_checkmembergroups.md)|String||
|[Get MemberGroups](../api/extensionproperty_getmembergroups.md)|String||
|[Get MemberObjects](../api/extensionproperty_getmemberobjects.md)|String||

<!-- uuid: fc35185a-21b0-4879-875a-47ea98a69b2b
2015-10-19 08:46:45 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ExtensionProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->