# Get PimAlertSettings

Retrieve the properties and relationships of pimalertsettings object.
### HTTP request
```http
GET /AlertSettings/<AlertId>
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
If successful, this method returns a `200 OK` response code and [PimAlertSettings](../resources/pimalertsettings.md) object in the response body.
### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 74
{
  "AlertId": "AlertId-value",
  "AlertSettings": "AlertSettings-value"
}
```
<!-- uuid: 85bf8b66-e88f-441d-b03e-e94d4a50f48a\n2015-10-09 15:13:50 UTC -->