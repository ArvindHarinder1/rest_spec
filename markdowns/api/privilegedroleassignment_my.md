# PrivilegedRoleAssignment: My


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /PrivilegedRoleAssignments/<UserId|RoleId>/My
POST /PrivilegedRoles/<Id>/Assignments/<UserId|RoleId>/My

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body

### Response
If successful, this method returns `200, OK` response code and [PrivilegedRoleAssignment](../resources/privilegedroleassignment.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
<!-- {
  "blockType": "request",
  "name": "privilegedroleassignment_my"
}-->
```http
POST /PrivilegedRoleAssignments/<UserId|RoleId>/My
Content-type: application/json
Content-length: 0
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "privilegedroleassignment"
} -->
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 160
{
  "UserId": "UserId-value",
  "RoleId": "RoleId-value",
  "IsElevated": true,
  "ExpirationTime": "datetime-value",
  "ResultMessage": "ResultMessage-value"
}
```

<!-- uuid: 70712754-371e-4897-b368-36c141e86415
2015-10-16 09:34:59 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "PrivilegedRoleAssignment: My",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->