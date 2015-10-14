# List OAuth2PermissionGrant

Retrieve a list of oauth2permissiongrant objects.
### Prerequisites
The following **scopes** are required to execute this API: ### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /oauth2PermissionGrants
```
### Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$orderby|string|Comma-separated list of properties that are used to sort the order of items in the response collection.|

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [OAuth2PermissionGrant](../resources/oauth2permissiongrant.md) objects in the response body.
### Example
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "oauth2permissiongrants"
} -->
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 266
{
  "values": [
    {
      "clientId": "clientId-value",
      "consentType": "consentType-value",
      "expiryTime": "datetime-value",
      "objectId": "objectId-value",
      "principalId": "principalId-value",
      "resourceId": "resourceId-value"
    }
  ]
}
```

<!-- uuid: a1dd7acb-9afc-4b38-ba28-c0e7333e2129
2015-10-14 23:39:37 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List OAuth2PermissionGrant",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->If successful, this method returns a `200 OK` response code and collection of [OAuth2PermissionGrant](../resources/oauth2permissiongrant.md) objects in the response body.
