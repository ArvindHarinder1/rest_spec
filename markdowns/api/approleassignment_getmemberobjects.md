# AppRoleAssignment: getMemberObjects


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<objectId>/appRoleAssignments/<objectId>/getMemberObjects
POST /servicePrincipals/<objectId>/appRoleAssignedTo/getMemberObjects
POST /groups/<objectId>/appRoleAssignments/<objectId>/getMemberObjects

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
  "name": "approleassignment_getmemberobjects"
}-->
```http
POST /users/<objectId>/appRoleAssignments/<objectId>/getMemberObjects
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

<!-- uuid: 287ac8a3-2683-46c3-acba-e2e7b1e9d3df
2015-10-16 09:50:56 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "AppRoleAssignment: getMemberObjects",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->