# Group: SubscribeByMail


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/<objectId>/SubscribeByMail
POST /users/<objectId>/JoinedGroups/<objectId>/SubscribeByMail
POST /drive/root/createdByUser/JoinedGroups/<objectId>/SubscribeByMail

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body

### Response
If successful, this method returns `200, OK` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "group_subscribebymail"
}-->
```http
POST /groups/<objectId>/SubscribeByMail
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.none"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 053c9ced-0381-40d8-bf6a-62ed5d728232
2015-10-24 21:49:47 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Group: SubscribeByMail",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->