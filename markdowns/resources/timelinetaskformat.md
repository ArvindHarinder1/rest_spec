# TimelineTaskFormat resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timelinetaskformat"
}-->

```json
{
  "anchorPosition": "String-value",
  "calloutHeight": 1024,
  "color": 1024,
  "drawingStyle": "String-value",
  "id": "String-value (identifier)",
  "labelOffsetX": 1024,
  "labelOffsetY": 1024,
  "swimlane": 1024,
  "version": "String-value",
  "visible": true
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|anchorPosition|String| Possible values are: `Top`, `Bottom`.|
|calloutHeight|Int32||
|color|Int32||
|drawingStyle|String| Possible values are: `Bar`, `Callout`.|
|id|String| Read-only.|
|labelOffsetX|Int32||
|labelOffsetY|Int32||
|swimlane|Int32||
|version|String||
|visible|Boolean||

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TimelineTaskFormat](../api/timelinetaskformat_get.md) | [TimelineTaskFormat](timelinetaskformat.md) |Read properties and relationships of timelineTaskFormat object.|
|[Update](../api/timelinetaskformat_update.md) | [TimelineTaskFormat](timelinetaskformat.md)	|Update TimelineTaskFormat object. |
|[Delete](../api/timelinetaskformat_delete.md) | None |Delete TimelineTaskFormat object. |

<!-- uuid: a45eaed3-2ab6-479e-b4cc-a0e56c081e2f
2015-10-25 12:52:19 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TimelineTaskFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->