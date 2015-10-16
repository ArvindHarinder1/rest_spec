# PrivilegedSecurityAlert: Reactivate


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /PrivilegedSecurityAlerts/<AlertId>/Reactivate

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body

### Response
If successful, this method returns `200, OK` response code and [PrivilegedSecurityAlert](../resources/privilegedsecurityalert.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
<!-- {
  "blockType": "request",
  "name": "privilegedsecurityalert_reactivate"
}-->
```http
POST /PrivilegedSecurityAlerts/<AlertId>/Reactivate
Content-type: application/json
Content-length: 0
```

##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "privilegedsecurityalert"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 596

{
  "AlertId": "AlertId-value",
  "NumberOfAffectedItems": 99,
  "AdditionalData": "AdditionalData-value",
  "AlertName": "AlertName-value",
  "AlertDescription": "AlertDescription-value",
  "LastModifiedTime": "datetime-value",
  "LastScannedTime": "datetime-value",
  "SeverityLevel": "SeverityLevel-value",
  "AlertType": "AlertType-value",
  "SecurityImpact": "SecurityImpact-value",
  "MitigationSteps": "MitigationSteps-value",
  "HowToPrevent": "HowToPrevent-value",
  "WasDismissed": true,
  "IsActive": true,
  "IsResolvable": true,
  "IsConfigurable": true,
  "Status": "Status-value"
}
```

<!-- uuid: d2ed186c-5565-47a7-a608-aa54d6f715f5
2015-10-16 23:06:08 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "PrivilegedSecurityAlert: Reactivate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->