# Update the properties of events object.

Update the properties of events object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /users/<objectId>/Calendar
PATCH /groups/<objectId>/Calendar
PATCH /users/<objectId>/Calendars/<Id>
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ChangeKey|String||
|Color|String| Possible values are: `LightBlue`, `LightGreen`, `LightOrange`, `LightGray`, `LightYellow`, `LightTeal`, `LightPink`, `LightBrown`, `LightRed`, `MaxColor`, `Auto`.|
|Name|String||

### Response
If successful, this method returns a `200 OK` response code and updated [Events](../resources/events.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_events"
}-->
```http
PUT /users/<objectId>/Calendar
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
  "@odata.type": "microsoft.graph.events"
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
  "description": "Update the properties of events object.",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->