# Get DirectoryLinkChange

Retrieve the properties and relationships of directorylinkchange object.
### HTTP request
```http

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
If successful, this method returns a `200 OK` response code and [DirectoryLinkChange](../resources/directorylinkchange.md) object in the response body.
### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 433
{
  "associationType": "associationType-value",
  "sourceObjectId": "sourceObjectId-value",
  "sourceObjectType": "sourceObjectType-value",
  "sourceObjectUri": "sourceObjectUri-value",
  "targetObjectId": "targetObjectId-value",
  "targetObjectType": "targetObjectType-value",
  "targetObjectUri": "targetObjectUri-value",
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "datetime-value"
}
```

<!-- uuid: c157afd8-3a89-4b06-8665-2964349b6e32
2015-10-09 18:12:08 UTC -->