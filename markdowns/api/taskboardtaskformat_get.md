# Get TaskBoardTaskFormat

Retrieve the properties and relationships of taskboardtaskformat object.
### HTTP request
```http
GET /tasks/<id>/bucketTaskBoardFormat
GET /tasks/<id>/statusTaskBoardFormat
GET /tasks/<id>/assignedToTaskBoardFormat
```
### Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [TaskBoardTaskFormat](../resources/taskboardtaskformat.md) object in the response body.
### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 110
{
  "type": "type-value",
  "orderHint": "orderHint-value",
  "id": "id-value",
  "version": "version-value"
}
```

<!-- uuid: 620a15d6-c307-41b5-ad48-b585069d3a64\n2015-10-09 15:15:46 UTC -->