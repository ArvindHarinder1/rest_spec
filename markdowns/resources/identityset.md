# identitySet resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.identityset"
}-->

```json
{
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  },
  "user": {
    "@odata.type": "microsoft.graph.identity"
  }
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|application|[identity](identity.md)||
|device|[identity](identity.md)||
|user|[identity](identity.md)||

<!-- uuid: cfe36506-792b-4056-b896-443ba1deaf72
2015-10-25 11:57:35 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "identitySet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->