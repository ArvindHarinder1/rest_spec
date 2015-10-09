# Create MailFolder

Use this API to create a new MailFolder.
### HTTP request
```http
POST /users/<objectId>/Folders
POST /drive/root/createdByUser/Folders
POST /drive/root/lastModifiedByUser/Folders

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

<!-- uuid: d3466166-7736-435e-90ba-1568d2eee455
2015-10-09 18:28:48 UTC -->