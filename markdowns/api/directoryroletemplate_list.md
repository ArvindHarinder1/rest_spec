# List DirectoryRoleTemplate

Retrieve a list of directoryroletemplate objects.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /directoryRoleTemplates
```
### Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$orderby|string|Comma-separated list of properties that are used to sort the order of items in the response collection.|

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [DirectoryRoleTemplate](../resources/directoryroletemplate.md) objects in the response body.
### Example
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "directoryroletemplates"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 237

{
  "values": [
    {
      "description": "description-value",
      "displayName": "displayName-value",
      "objectType": "objectType-value",
      "objectId": "objectId-value",
      "deletionTimestamp": "datetime-value"
    }
  ]
}
```
If successful, this method returns a `200 OK` response code and collection of [DirectoryRoleTemplate](../resources/directoryroletemplate.md) objects in the response body.

<!-- uuid: b5810376-36e9-43cf-a139-59e65dc07243
2015-10-16 23:06:05 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List DirectoryRoleTemplate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->