# Update the properties of directoryobject object.

Update the properties of directoryobject object.
### Prerequisites
The following **scopes** are required to execute this API: ### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /users/<objectId>/manager
PATCH /directoryObjects/<objectId>
PATCH /contacts/<objectId>/manager
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|deletionTimestamp|DateTimeOffset||
|objectType|String||

### Response
If successful, this method returns a `200 OK` response code and updated [DirectoryObject](../resources/directoryobject.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_directoryobject"
}-->
```http
PUT /users/<objectId>/manager
Content-type: application/json
Content-length: 111
{
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "datetime-value"
}
```
##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "directoryobject"
} -->
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 111
{
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "datetime-value"
}
```

<!-- uuid: 2c1225d9-cb00-47db-940e-efab765fa3ac
2015-10-14 23:39:31 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update the properties of directoryobject object.",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->