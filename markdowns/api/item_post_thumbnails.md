# Create thumbnailSet

Use this API to create a new thumbnailSet.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/thumbnails
POST /drive/items/<id>/thumbnails
POST /drives/<id>/root/thumbnails

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
In the request body, supply a JSON representation of [thumbnailSet](../resources/thumbnailset.md) object.


### Response
If successful, this method returns `201, Created` response code and [thumbnailSet](../resources/thumbnailset.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_thumbnailset_from_item"
}-->
```http
POST /drive/root
Content-type: application/json
```
In the request body, supply a JSON representation of [thumbnailSet](../resources/thumbnailset.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "thumbnailset"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 456

{
  "id": "id-value",
  "large": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "medium": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "small": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "source": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  }
}
```

<!-- uuid: eaeaf86c-64c3-4625-9dd8-33cf76b09f90
2015-10-16 23:06:05 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create thumbnailSet",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->