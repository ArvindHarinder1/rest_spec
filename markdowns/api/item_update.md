# Update item

Update the properties of item object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /drive/root
PATCH /drive/items/<id>
PATCH /drives/<id>/root
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|audio|audio|Audio metadata, if the item is an audio file. Read-only.|
|cTag|string|An eTag for the content of the item. This eTag is not changed if only the metadata is changed. **Note** This property is not returned if the Item is a folder. Read-only.|
|content|stream|The content stream, if the Item represents a file.|
|createdBy|identitySet|Identity of the user, device, and application which created the item. Read-only.|
|createdDateTime|dateTimeOffset|Date and time of item creation. Read-only.|
|deleted|deleted|Information about the deleted state of the item. Read-only.|
|description|string|Provide a user-visible description of the item. Read-write.|
|eTag|string|eTag for the entire item (metadata + content). Read-only.|
|file|file|File metadata, if the item is a file. Read-only.|
|fileSystemInfo|fileSystemInfo|File system information on client. Read-write.|
|folder|folder|Folder metadata, if the item is a folder. Read-only.|
|image|image|Image metadata, if the item is an image. Read-only.|
|lastModifiedBy|identitySet|Identity of the user, device, and application which last modified the item. Read-only.|
|lastModifiedDateTime|dateTimeOffset|Date and time the item was last modified. Read-only.|
|location|location|Location metadata, if the item has location data. Read-only.|
|name|string|The name of the item (filename and extension). Read-write.|
|openWith|openWithSet||
|parentReference|itemReference|Parent information, if the item has a parent. Read-write.|
|photo|photo|Photo metadata, if the item is a photo. Read-only.|
|searchResult|searchResult|Search metadata, if the item is from a search result.|
|shared|shared||
|size|int64|Size of the item in bytes. Read-only.|
|specialFolder|specialFolder||
|video|video|Video metadata, if the item is a video. Read-only.|
|webDavUrl|string||
|webUrl|string|URL that displays the resource in the browser. Read-only.|

### Response
If successful, this method returns a `200 OK` response code and updated [item](../resources/item.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_item"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/drive/root
Content-type: application/json
Content-length: 445

{
  "content": "content-value",
  "createdBy": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "device": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "user": {
      "displayName": "displayName-value",
      "id": "id-value"
    }
  },
  "createdDateTime": "datetime-value",
  "cTag": "cTag-value",
  "description": "description-value",
  "eTag": "eTag-value"
}
```
##### Response
Here is an example of the response. Note: The response object may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.item"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 445

{
  "content": "content-value",
  "createdBy": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "device": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "user": {
      "displayName": "displayName-value",
      "id": "id-value"
    }
  },
  "createdDateTime": "datetime-value",
  "cTag": "cTag-value",
  "description": "description-value",
  "eTag": "eTag-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->