# Notebook: CopyNotebook


### HTTP request
```http
POST /users/<objectId>/notes/notebooks/<id>/CopyNotebook
POST /drive/root/createdByUser/notes/notebooks/<id>/CopyNotebook
POST /users/<objectId>/notes/pages/<id>/parentNotebook/CopyNotebook

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|siteCollectionId|String||
|siteId|String||
|renameAs|String||

### Response
If successful, this method returns `200, OK` response code and [CopyNotebookModel](../resources/copynotebookmodel.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
```http
POST /users/<objectId>/notes/notebooks/<id>/CopyNotebook
Content-type: application/json
Content-length: 110
{
  "siteCollectionId": "siteCollectionId-value",
  "siteId": "siteId-value",
  "renameAs": "renameAs-value"
}
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 400
{
  "isDefault": true,
  "userRole": "userRole-value",
  "isShared": true,
  "sectionsUrl": "sectionsUrl-value",
  "sectionGroupsUrl": "sectionGroupsUrl-value",
  "links": {
  },
  "name": "name-value",
  "createdBy": "createdBy-value",
  "lastModifiedBy": "lastModifiedBy-value",
  "lastModifiedTime": "datetime-value",
  "id": "id-value",
  "self": "self-value",
  "createdTime": "datetime-value"
}
```

<!-- uuid: 08baa73b-46e6-417f-97bc-d1b7093539e9
2015-10-09 18:28:47 UTC -->