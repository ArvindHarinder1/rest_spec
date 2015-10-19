# Update the properties of extensionproperty object.

Update the properties of extensionproperty object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /applications/<objectId>/extensionProperties/<objectId>
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appDisplayName|String||
|dataType|String||
|deletionTimestamp|DateTimeOffset||
|isSyncedFromOnPremises|Boolean||
|name|String||
|objectType|String||
|targetObjects|String||

### Response
If successful, this method returns a `200 OK` response code and updated [ExtensionProperty](../resources/extensionproperty.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_extensionproperty"
}-->
```http
PUT /applications/<objectId>/extensionProperties/<objectId>
Content-type: application/json
Content-length: 297

{
  "appDisplayName": "appDisplayName-value",
  "name": "name-value",
  "dataType": "dataType-value",
  "isSyncedFromOnPremises": true,
  "targetObjects": [
    "targetObjects-value"
  ],
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "datetime-value"
}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.extensionproperty"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 297

{
  "appDisplayName": "appDisplayName-value",
  "name": "name-value",
  "dataType": "dataType-value",
  "isSyncedFromOnPremises": true,
  "targetObjects": [
    "targetObjects-value"
  ],
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "datetime-value"
}
```

<!-- uuid: 5a70bd81-f989-4d2d-afaa-25b15ec9a9b1
2015-10-19 09:02:16 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update the properties of extensionproperty object.",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->