# Get NotificationRule

Retrieve the properties and relationships of notificationrule object.
### HTTP request
```http
GET /NotificationRules/<Id>
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
If successful, this method returns a `200 OK` response code and [NotificationRule](../resources/notificationrule.md) object in the response body.
### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 260
{
  "Id": "Id-value",
  "UserName": "UserName-value",
  "UserId": "UserId-value",
  "RoleName": "RoleName-value",
  "RoleId": "RoleId-value",
  "NotificationId": "NotificationId-value",
  "NotificationName": "NotificationName-value",
  "Event": "Event-value"
}
```

<!-- uuid: d4e72ade-60d4-4896-ac11-7a347c38ca4f\n2015-10-09 15:15:45 UTC -->