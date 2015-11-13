# attendee resource type

An event attendee.

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendee"
}-->

```json
{
  "emailAddress": {"@odata.type": "microsoft.graph.emailAddress"},
  "status": {"@odata.type": "microsoft.graph.responseStatus"},
  "type": {"@odata.type": "microsoft.graph.attendeeType"}
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|emailAddress|[emailAddress](emailaddress.md)|The name and email address of the attendee.|
|status|[responseStatus](responsestatus.md)|The response (none, accepted, declined, etc.) and time.|
|type|[attendeeType](attendeetype.md)|The attendee type: Required = 0, Optional = 1, Resource = 2.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attendee resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->