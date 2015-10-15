# DirectoryObject: getMemberObjects


### Prerequisites
The following **scopes** are required to execute this API: ### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<objectId>/manager/getMemberObjects
POST /directoryObjects/<objectId>/getMemberObjects
POST /contacts/<objectId>/manager/getMemberObjects

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|securityEnabledOnly|Boolean||

### Response
If successful, this method returns `200, OK` response code and String collection object in the response body.

### Example
Here is an example of how to call this API.
##### Request
<!-- {
  "blockType": "request",
  "name": "directoryobject_getmemberobjects"
}-->
```http
POST /users/<objectId>/manager/getMemberObjects
Content-type: application/json
Content-length: 33
{
  "securityEnabledOnly": true
}
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "string"
} -->
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 39
{
  "value": [
    "String-value"
  ]
}
```

<!-- uuid: 78671fcb-2fba-4c78-b00e-f5d9125b8795
2015-10-15 04:04:55 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "DirectoryObject: getMemberObjects",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->