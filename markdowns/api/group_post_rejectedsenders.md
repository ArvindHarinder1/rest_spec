# Create RejectedSender

Use this API to create a new RejectedSender.
### Prerequisites
The following **scopes** are required to execute this API: ### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/<objectId>/RejectedSenders
POST /users/<objectId>/JoinedGroups/<objectId>/RejectedSenders
POST /drive/root/createdByUser/JoinedGroups/<objectId>/RejectedSenders

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP header. Update accordingly...|

### Request body
In the request body, supply a JSON representation of [DirectoryObject](../resources/directoryobject.md) object.


### Response
If successful, this method returns `201, Created` response code and [DirectoryObject](../resources/directoryobject.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_group"
}-->
```http
POST /groups/<objectId>/
Content-type: application/json
```
In the request body, supply a JSON representation of [DirectoryObject](../resources/directoryobject.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "directoryobject"
} -->
```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 111
{
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "datetime-value"
}
```

<!-- uuid: ba44f038-8ac5-4564-8660-1df21f41dc1c
2015-10-15 03:41:19 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create RejectedSender",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->