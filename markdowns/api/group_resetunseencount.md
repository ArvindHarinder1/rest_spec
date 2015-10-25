# Group: ResetUnseenCount


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/<objectId>/ResetUnseenCount
POST /users/<objectId>/JoinedGroups/<objectId>/ResetUnseenCount
POST /drive/root/createdByUser/JoinedGroups/<objectId>/ResetUnseenCount

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
  "name": "group_resetunseencount"
}-->
```http
POST /groups/<objectId>/ResetUnseenCount
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

<!-- uuid: cfe36506-792b-4056-b896-443ba1deaf72
2015-10-25 11:57:35 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Group: ResetUnseenCount",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->