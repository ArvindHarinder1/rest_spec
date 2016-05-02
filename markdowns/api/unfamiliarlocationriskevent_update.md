# Update unfamiliarlocationriskevent

Update the properties of unfamiliarlocationriskevent object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /unfamiliarLocationRiskEvents/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|closedDateTime|dateTimeOffset||
|createdDateTime|dateTimeOffset||
|ipAddress|string||
|location|string||
|riskEventDateTime|dateTimeOffset||
|riskEventStatus|string| Possible values are: `active`, `remediated`, `dismissedAsFixed`, `dismissedAsFalsePositive`, `dismissedAsIgnore`, `loginBlocked`, `closedMfaAuto`, `closedMultipleReasons`.|
|riskLevel|string| Possible values are: `low`, `medium`, `high`.|
|riskType|string||
|userDisplayName|string||
|userId|string||
|userPrincipalName|string||

### Response
If successful, this method returns a `200 OK` response code and updated [unfamiliarLocationRiskEvent](../resources/unfamiliarlocationriskevent.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_unfamiliarlocationriskevent"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/unfamiliarLocationRiskEvents/<id>
Content-type: application/json
Content-length: 237

{
  "location": "location-value",
  "ipAddress": "ipAddress-value",
  "userDisplayName": "userDisplayName-value",
  "userPrincipalName": "userPrincipalName-value",
  "riskEventDateTime": "datetime-value",
  "riskType": "riskType-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unfamiliarLocationRiskEvent"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 237

{
  "location": "location-value",
  "ipAddress": "ipAddress-value",
  "userDisplayName": "userDisplayName-value",
  "userPrincipalName": "userPrincipalName-value",
  "riskEventDateTime": "datetime-value",
  "riskType": "riskType-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update unfamiliarlocationriskevent",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->