# Update DirectoryObject

Update the properties of directoryobject object.
### HTTP request
```http
PATCH /users/<objectId>/manager
PATCH /contacts/<objectId>/manager
PATCH /directoryObjects/<objectId>
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

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

<!-- uuid: 94cb92ca-ad4f-4ca8-a0e2-21bcfd7e0cf1
2015-10-09 15:58:16 UTC -->