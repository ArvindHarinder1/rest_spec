# Delete

Delete OAuth2PermissionGrant.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /oauth2PermissionGrants/<objectId>
DELETE /users/<objectId>/oauth2PermissionGrants/<objectId>
DELETE /drive/root/createdByUser/oauth2PermissionGrants/<objectId>

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.


<!-- uuid: 56738a51-8e81-42e4-b47e-8312ce975d06
2015-10-16 01:35:18 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->