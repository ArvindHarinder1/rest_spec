# Create ownedObject

Use this API to create a new ownedObject.
### HTTP request
```http
POST /users/<objectId>/ownedObjects
POST /drives/<id>/root/createdByUser/ownedObjects
POST /drives/<id>/root/lastModifiedByUser/ownedObjects

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, supply a JSON representation of [DirectoryObject](../resources/directoryobject.md) object.


### Response
If successful, this method returns `201, Created` response code and [DirectoryObject](../resources/directoryobject.md) object in the response body.

### Example
##### Response
Here is an example of the response.
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

<!-- uuid: f5fb0f3a-2ce5-4016-863e-e98ac84a4594\n2015-10-09 15:15:47 UTC -->