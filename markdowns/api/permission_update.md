# Update permission

Update the properties of permission object.
### HTTP request
```http
PATCH /drive/root/permissions/<id>
PATCH /drive/items/<id>/permissions/<id>
PATCH /drives/<id>/root/permissions/<id>
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|grantedTo|identitySet||
|inheritedFrom|itemReference||
|invitation|sharingInvitation||
|link|sharingLink||
|roles|String||
|shareId|String||

### Response
If successful, this method returns a `200 OK` response code and updated [permission](../resources/permission.md) object in the response body.
### Example
##### Request
Here is an example of the request.
```http
PUT /drive/root/permissions/<id>
Content-type: application/json
Content-length: 176
{
  "grantedTo": {
  },
  "id": "id-value",
  "invitation": {
  },
  "inheritedFrom": {
  },
  "link": {
  },
  "roles": [
    "roles-value"
  ],
  "shareId": "shareId-value"
}
```
##### Response
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 176
{
  "grantedTo": {
  },
  "id": "id-value",
  "invitation": {
  },
  "inheritedFrom": {
  },
  "link": {
  },
  "roles": [
    "roles-value"
  ],
  "shareId": "shareId-value"
}
```

<!-- uuid: 8b8a03d4-a520-4d35-810e-93566fd546fe
2015-10-09 18:34:13 UTC -->