# Message: ReplyAll


### Prerequisites
The following **scopes** are required to execute this API: ### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<objectId>/Messages/<Id>/ReplyAll
POST /drive/root/createdByUser/Messages/<Id>/ReplyAll
POST /users/<objectId>/RootFolder/Messages/<Id>/ReplyAll

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|Comment|String||

### Response
If successful, this method returns `200, OK` response code and [None](../resources/none.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
<!-- {
  "blockType": "request",
  "name": "message_replyall"
}-->
```http
POST /users/<objectId>/Messages/<Id>/ReplyAll
Content-type: application/json
Content-length: 32
{
  "Comment": "Comment-value"
}
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "none"
} -->
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 3
{
}
```

<!-- uuid: f43cc7ab-4039-405a-b9e1-2d451e90d92e
2015-10-15 04:04:56 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Message: ReplyAll",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->