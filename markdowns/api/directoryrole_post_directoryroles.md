# Create DirectoryRole

Use this API to create a new DirectoryRole.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /directoryObjects

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
In the request body, supply a JSON representation of [DirectoryRole](../resources/directoryrole.md) object.


### Response
If successful, this method returns `201, Created` response code and [DirectoryRole](../resources/directoryrole.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_directoryrole_from_directoryobjects"
}-->
```http
POST /directoryObjects
```
In the request body, supply a JSON representation of [DirectoryRole](../resources/directoryrole.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.directoryrole"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 275

{
  "description": "description-value",
  "displayName": "displayName-value",
  "isSystem": true,
  "roleDisabled": true,
  "roleTemplateId": "roleTemplateId-value",
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "datetime-value"
}
```

<!-- uuid: 7422d6e3-64b4-47fd-b545-ee6b05d9b466
2015-10-24 21:49:48 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create DirectoryRole",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->