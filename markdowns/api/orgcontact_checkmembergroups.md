# OrgContact: checkMemberGroups


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /contacts/<objectId>/checkMemberGroups

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

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
  "name": "orgcontact_checkmembergroups"
}-->
```http
POST /contacts/<objectId>/checkMemberGroups
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

<!-- uuid: 8ab7c309-d896-43b8-83a7-6af3a9e3e399
2015-10-16 10:08:00 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "OrgContact: checkMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->