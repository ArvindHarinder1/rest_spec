# DeviceConfiguration: checkMemberGroups


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /deviceConfiguration/<objectId>/checkMemberGroups

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|groupIds|String||

### Response
If successful, this method returns `200, OK` response code and String collection object in the response body.

### Example
Here is an example of how to call this API.
##### Request
<!-- {
  "blockType": "request",
  "name": "deviceconfiguration_checkmembergroups"
}-->
```http
POST /deviceConfiguration/<objectId>/checkMemberGroups
Content-type: application/json
Content-length: 44
{
  "groupIds": [
    "groupIds-value"
  ]
}
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "string"
} -->
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 39
{
  "value": [
    "String-value"
  ]
}
```

<!-- uuid: 35a4976c-9172-42ab-8a5e-99f2a187538b
2015-10-16 01:35:16 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "DeviceConfiguration: checkMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->