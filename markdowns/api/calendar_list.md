# List Calendar

Retrieve a list of calendar objects.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/<objectId>
GET /drive/root/createdByUser
GET /drive/root/lastModifiedByUser
```
### Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$count|none|The count of related entities can be requested by specifying the $count query option.|
|$expand|string|Comma-separated list of relationships to expand and include in the response. See relationships table of [Calendar](../resources/calendar.md) for supported names. |
|$filter|string|Filter string that lets you filter the response based on a set of criteria.|
|$orderby|string|Comma-separated list of properties that are used to sort the order of items in the response collection.|
|$select|string|Comma-separated list of properties to include in the response.|
|$skip|int|The number of items to skip in a result set.|
|$skipToken|string|Paging token that is used to get the next set of results.|
|$top|int|The number of items to return in a result set.|

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [Calendar](../resources/calendar.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_calendars"
}-->
```http
GET /users/<objectId>
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.calendar",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 151

{
  "value": [
    {
      "Name": "Name-value",
      "ChangeKey": "ChangeKey-value",
      "Color": "Color-value",
      "Id": "Id-value"
    }
  ]
}
```

<!-- uuid: 972508eb-009b-45ab-822e-fdc84c3a8ebf
2015-10-25 12:45:03 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List Calendar",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->