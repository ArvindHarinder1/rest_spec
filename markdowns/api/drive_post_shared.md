# Create item

Use this API to create a new item.
### HTTP request
```http
POST /drives/<id>/shared
POST /users/<objectId>/drive/shared
POST /groups/<objectId>/drive/shared

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, supply a JSON representation of [item](../resources/item.md) object.


### Response
If successful, this method returns `201, Created` response code and [item](../resources/item.md) object in the response body.

### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 666
{
  "content": "Stream-value",
  "createdBy": {
  },
  "createdDateTime": "datetime-value",
  "cTag": "String-value",
  "description": "String-value",
  "eTag": "String-value",
  "id": "String-value",
  "lastModifiedBy": {
  },
  "lastModifiedDateTime": "datetime-value",
  "name": "String-value",
  "parentReference": {
  },
  "size": 99,
  "webDavUrl": "String-value",
  "webUrl": "String-value",
  "audio": {
  },
  "deleted": {
  },
  "file": {
  },
  "fileSystemInfo": {
  },
  "folder": {
  },
  "image": {
  },
  "location": {
  },
  "openWith": {
  },
  "photo": {
  },
  "searchResult": {
  },
  "shared": {
  },
  "specialFolder": {
  },
  "video": {
  }
}
```
