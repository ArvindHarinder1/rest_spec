# Create MailFolder

Use this API to create a new MailFolder.
### HTTP request
```http
POST /users/<objectId>/RootFolder/ChildFolders
POST /users/<objectId>/Folders/<Id>/ChildFolders
POST /drive/root/createdByUser/RootFolder/ChildFolders

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, supply a JSON representation of [MailFolder](../resources/mailfolder.md) object.


### Response
If successful, this method returns `201, Created` response code and [MailFolder](../resources/mailfolder.md) object in the response body.

### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 130
{
  "ParentFolderId": "ParentFolderId-value",
  "DisplayName": "DisplayName-value",
  "ChildFolderCount": 99,
  "Id": "Id-value"
}
```

<!-- uuid: ef79550e-b5b8-4167-b3a0-608b34d3071a
2015-10-09 17:20:41 UTC -->