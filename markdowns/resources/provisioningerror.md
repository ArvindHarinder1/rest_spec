# ProvisioningError resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningerror"
}-->

```json
{
  "errorDetail": "String-value",
  "resolved": true,
  "service": "String-value",
  "timestamp": "String (timestamp)"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|errorDetail|String||
|resolved|Boolean||
|service|String||
|timestamp|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|

<!-- uuid: 6a4cb3ca-801a-4820-9ca5-67fe30412773
2015-10-19 09:07:25 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ProvisioningError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->