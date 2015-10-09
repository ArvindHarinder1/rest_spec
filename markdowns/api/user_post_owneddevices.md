# Create ownedDevice

Use this API to create a new ownedDevice.
### HTTP request
```http
POST /users/<objectId>/ownedDevices
POST /drives/<id>/root/createdByUser/ownedDevices
POST /drives/<id>/root/lastModifiedByUser/ownedDevices

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

<!-- uuid: 2ee356f7-8b1c-4d3c-ac8a-65ce1ef1648d
2015-10-09 15:58:18 UTC -->