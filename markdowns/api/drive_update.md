# Update drive

Update the properties of drive object.
### HTTP request
```http
PATCH /drives/<id>
PATCH /users/<objectId>/drive
PATCH /groups/<objectId>/drive
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|driveType|String||
|owner|identitySet||
|quota|quota||

### Response
If successful, this method returns a `200 OK` response code and updated [drive](../resources/drive.md) object in the response body.
### Example
##### Request
Here is an example of the request.
```http
PUT /drives/<id>
Content-type: application/json
Content-length: 92
{
  "id": "id-value",
  "driveType": "driveType-value",
  "owner": {
  },
  "quota": {
  }
}
```
##### Response
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 92
{
  "id": "id-value",
  "driveType": "driveType-value",
  "owner": {
  },
  "quota": {
  }
}
```
<!-- uuid: 933312ad-29f4-46f7-9483-cfd543ddc06c\n2015-10-09 15:14:07 UTC -->