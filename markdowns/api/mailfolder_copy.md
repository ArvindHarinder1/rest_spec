# MailFolder: Copy


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<objectId>/RootFolder/Copy
POST /users/<objectId>/Folders/<Id>/Copy
POST /drive/root/createdByUser/RootFolder/Copy

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|DestinationId|String||

### Response
If successful, this method returns `200, OK` response code and [MailFolder](../resources/mailfolder.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
<!-- {
  "blockType": "request",
  "name": "mailfolder_copy"
}-->
```http
POST /users/<objectId>/RootFolder/Copy
Content-type: application/json
Content-length: 44
{
  "DestinationId": "DestinationId-value"
}
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "mailfolder"
} -->
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 130
{
  "ParentFolderId": "ParentFolderId-value",
  "DisplayName": "DisplayName-value",
  "ChildFolderCount": 99,
  "Id": "Id-value"
}
```

<!-- uuid: d660f6de-1b2d-491c-89b0-857a23d66dcc
2015-10-16 09:51:10 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "MailFolder: Copy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->