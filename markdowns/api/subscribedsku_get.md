# Get SubscribedSku

Retrieve the properties and relationships of subscribedsku object.
### HTTP request
```http
GET /subscribedSkus/<objectId>
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
If successful, this method returns a `200 OK` response code and [SubscribedSku](../resources/subscribedsku.md) object in the response body.
### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 235
{
  "capabilityStatus": "capabilityStatus-value",
  "consumedUnits": 99,
  "objectId": "objectId-value",
  "prepaidUnits": {
  },
  "servicePlans": [
    {
    }
  ],
  "skuId": "skuId-value",
  "skuPartNumber": "skuPartNumber-value"
}
```

<!-- uuid: 1f8eca33-7d49-4465-a63c-c82b35f5e00f
2015-10-09 18:28:48 UTC -->