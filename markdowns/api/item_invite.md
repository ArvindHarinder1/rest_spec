# item: invite


### HTTP request
```http
POST /drives/<id>/root/invite
POST /shares/<id>/items/<id>/invite
POST /drives/<id>/items/<id>/invite

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|recipients|recipients||
|message|String||
|requireSignIn|Boolean||
|sendInvitation|Boolean||
|roles|String||

### Response
If successful, this method returns `200, OK` response code and [permission](../resources/permission.md) collection object in the response body.

### Example
Here is an example of how to call this API.
##### Request
```http
POST /drives/<id>/root/invite
{
  "recipients": [
    {
    }
  ],
  "message": "String-value",
  "requireSignIn": true,
  "sendInvitation": true,
  "roles": [
    "String-value"
  ]
}
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 180
{
  "grantedTo": {
  },
  "id": "String-value",
  "invitation": {
  },
  "inheritedFrom": {
  },
  "link": {
  },
  "roles": [
    "String-value"
  ],
  "shareId": "String-value"
}
```
