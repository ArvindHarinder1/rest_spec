# Update the properties of calendargroup object.

Update the properties of calendargroup object.
### Prerequisites
The following **scopes** are required to execute this API: ### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /users/<objectId>/CalendarGroups/<Id>
PATCH /drive/root/createdByUser/CalendarGroups/<Id>
PATCH /drive/root/lastModifiedByUser/CalendarGroups/<Id>
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ChangeKey|String||
|ClassId|Guid||
|Name|String||

### Response
If successful, this method returns a `200 OK` response code and updated [CalendarGroup](../resources/calendargroup.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_calendargroup"
}-->
```http
PUT /users/<objectId>/CalendarGroups/<Id>
Content-type: application/json
Content-length: 110
{
  "Name": "Name-value",
  "ChangeKey": "ChangeKey-value",
  "ClassId": "ClassId-value",
  "Id": "Id-value"
}
```
##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "calendargroup"
} -->
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 110
{
  "Name": "Name-value",
  "ChangeKey": "ChangeKey-value",
  "ClassId": "ClassId-value",
  "Id": "Id-value"
}
```

<!-- uuid: 149655c4-b141-4f8d-8d8f-0efe65060f62
2015-10-15 03:41:18 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update the properties of calendargroup object.",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->