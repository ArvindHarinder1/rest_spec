# PimAlert: Reactivate


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /Alerts/<AlertId>/Reactivate

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body

### Response
If successful, this method returns `200, OK` response code and [PimAlert](../resources/pimalert.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
<!-- {
  "blockType": "request",
  "name": "pimalert_reactivate"
}-->
```http
POST /Alerts/<AlertId>/Reactivate
Content-type: application/json
Content-length: 0
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "pimalert"
} -->
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 529
{
  "AlertId": "AlertId-value",
  "NumberOfAffected": 99,
  "AdditionalData": "AdditionalData-value",
  "AlertName": "AlertName-value",
  "AlertDescription": "AlertDescription-value",
  "LastModifiedTime": "datetime-value",
  "LastScannedTime": "datetime-value",
  "SeverityLevel": 99,
  "AlertType": 99,
  "SecurityImpact": "SecurityImpact-value",
  "MitigationSteps": "MitigationSteps-value",
  "HowToPrevent": "HowToPrevent-value",
  "WasDismissed": true,
  "IsActive": true,
  "IsResolvable": true,
  "IsConfigurable": true
}
```

<!-- uuid: c840c30f-5259-49bd-8e1b-f1f62d7055da
2015-10-16 09:51:14 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "PimAlert: Reactivate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->