# Section: CopyToNotebook


### HTTP request
```http
POST /users/<objectId>/notes/sections/<id>/CopyToNotebook
POST /users/<objectId>/notes/pages/<id>/parentSection/CopyToNotebook
POST /drives/<id>/root/createdByUser/notes/sections/<id>/CopyToNotebook

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String||
|siteCollectionId|String||
|siteId|String||
|renameAs|String||

### Response
If successful, this method returns `200, OK` response code and [CopySectionModel](../resources/copysectionmodel.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
```http
POST /users/<objectId>/notes/sections/<id>/CopyToNotebook
{
  "id": "id-value",
  "siteCollectionId": "siteCollectionId-value",
  "siteId": "siteId-value",
  "renameAs": "renameAs-value"
}
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 276
{
  "isDefault": true,
  "pagesUrl": "pagesUrl-value",
  "name": "name-value",
  "createdBy": "createdBy-value",
  "lastModifiedBy": "lastModifiedBy-value",
  "lastModifiedTime": "datetime-value",
  "id": "id-value",
  "self": "self-value",
  "createdTime": "datetime-value"
}
```
