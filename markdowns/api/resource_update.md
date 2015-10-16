# Update the properties of resource object.

Update the properties of resource object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /users/<objectId>/notes/resources/<id>
PATCH /drive/root/createdByUser/notes/resources/<id>
PATCH /drive/root/lastModifiedByUser/notes/resources/<id>
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|Stream||
|contentUrl|String||
|self|String||

### Response
If successful, this method returns a `200 OK` response code and updated [Resource](../resources/resource.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_resource"
}-->
```http
PUT /users/<objectId>/notes/resources/<id>
Content-type: application/json
Content-length: 112
{
  "id": "id-value",
  "self": "self-value",
  "content": "content-value",
  "contentUrl": "contentUrl-value"
}
```
##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "resource"
} -->
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 112
{
  "id": "id-value",
  "self": "self-value",
  "content": "content-value",
  "contentUrl": "contentUrl-value"
}
```

<!-- uuid: bd4c1fd0-18c7-4724-93f3-edcbcfc73625
2015-10-16 21:11:02 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update the properties of resource object.",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->