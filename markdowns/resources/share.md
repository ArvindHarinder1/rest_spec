# share resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "items"
  ],
  "@odata.type": "microsoft.graph.share"
}-->

```json
{
  "id": "String-value (identifier)",
  "items": [
    {
      "@odata.type": "microsoft.graph.item"
    }
  ],
  "name": "String-value",
  "owner": {
    "@odata.type": "microsoft.graph.identityset"
  }
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|
|name|String||
|owner|[identitySet](identityset.md)||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|items|[item](item.md) collection| Read-only. Nullable.|

### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get share](../api/share_get.md) | [share](share.md) |Read properties and relationships of share object.|
|[Create item](../api/share_post_items.md) |[item](item.md)| Create a new item by posting to the items collection.|
|[Update](../api/share_update.md) | [share](share.md)	|Update share object. |
|[Delete](../api/share_delete.md) | None |Delete share object. |

<!-- uuid: 133eb71e-ea99-4511-ac11-ef52d1bb1ac6
2015-10-19 09:07:26 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "share resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->