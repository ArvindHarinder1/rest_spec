# Get Bucket

Retrieve the properties and relationships of bucket object.
### HTTP request
```http
GET /buckets/<id>
GET /plans/<id>/buckets/<id>
GET /users/<objectId>/plans/<id>/buckets/<id>
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
If successful, this method returns a `200 OK` response code and [Bucket](../resources/bucket.md) object in the response body.
