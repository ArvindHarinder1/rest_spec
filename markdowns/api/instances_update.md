# Update the properties of instances object.

Update the properties of instances object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /users/<objectId>/Events/<Id>
PATCH /groups/<objectId>/Events/<Id>
PATCH /users/<objectId>/CalendarView/<Id>
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|Attendees|Attendee||
|Body|ItemBody||
|BodyPreview|String||
|Categories|String||
|ChangeKey|String||
|CreatedDateTime|DateTimeOffset||
|End|DateTimeOffset||
|EndTimeZone|String||
|HasAttachments|Boolean||
|Importance|String| Possible values are: `Low`, `Normal`, `High`.|
|IsAllDay|Boolean||
|IsCancelled|Boolean||
|IsOrganizer|Boolean||
|LastModifiedDateTime|DateTimeOffset||
|Location|Location||
|Organizer|Recipient||
|OriginalStart|DateTimeOffset||
|Recurrence|PatternedRecurrence||
|Reminder|Int32||
|ResponseRequested|Boolean||
|ResponseStatus|ResponseStatus||
|SeriesMasterId|String||
|ShowAs|String| Possible values are: `Free`, `Tentative`, `Busy`, `Oof`, `WorkingElsewhere`, `Unknown`.|
|Start|DateTimeOffset||
|StartTimeZone|String||
|Subject|String||
|Type|String| Possible values are: `SingleInstance`, `Occurrence`, `Exception`, `SeriesMaster`.|
|WebLink|String||
|iCalUId|String||

### Response
If successful, this method returns a `200 OK` response code and updated [Instances](../resources/instances.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_instances"
}-->
```http
PUT /users/<objectId>/Events/<Id>
Content-type: application/json
Content-length: 3

{
}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.instances"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 3

{
}
```

<!-- uuid: 972508eb-009b-45ab-822e-fdc84c3a8ebf
2015-10-25 12:45:03 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update the properties of instances object.",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->