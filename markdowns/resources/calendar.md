# Calendar resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "CalendarView",
    "Events"
  ],
  "@odata.type": "microsoft.graph.calendar"
}-->

```json
{
  "CalendarView": [
    {
      "@odata.type": "microsoft.graph.event"
    }
  ],
  "ChangeKey": "String-value",
  "Color": "String-value",
  "Events": [
    {
      "@odata.type": "microsoft.graph.event"
    }
  ],
  "Id": "String-value (identifier)",
  "Name": "String-value"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ChangeKey|String||
|Color|String| Possible values are: `LightBlue`, `LightGreen`, `LightOrange`, `LightGray`, `LightYellow`, `LightTeal`, `LightPink`, `LightBrown`, `LightRed`, `MaxColor`, `Auto`.|
|Id|String| Read-only.|
|Name|String||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|CalendarView|[Event](event.md) collection| Read-only. Nullable.|
|Events|[Event](event.md) collection| Read-only. Nullable.|

### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Calendar](../api/calendar_get.md) | [Calendar](calendar.md) |Read properties and relationships of calendar object.|
|[Create Event](../api/calendar_post_calendarview.md) |[Event](event.md)| Create a new Event by posting to the CalendarView collection.|
|[Create Event](../api/calendar_post_events.md) |[Event](event.md)| Create a new Event by posting to the Events collection.|
|[Update](../api/calendar_update.md) | [Calendar](calendar.md)	|Update Calendar object. |
|[Delete](../api/calendar_delete.md) | Void	|Delete Calendar object. |

<!-- uuid: 343f38e2-65f0-4040-b764-db0198488fac
2015-10-19 09:02:11 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Calendar resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->