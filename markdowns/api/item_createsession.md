# item: createSession


### HTTP request
```http
POST /drives/<id>/root/createSession
POST /shares/<id>/items/<id>/createSession
POST /drives/<id>/items/<id>/createSession

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|item|chunkedUploadSessionDescriptor||

### Response
If successful, this method returns `200, OK` response code and [uploadSession](../resources/uploadsession.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
```http
POST /drives/<id>/root/createSession
{
  "item": {
  }
}
```
##### Response
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 140
{
  "uploadUrl": "uploadUrl-value",
  "expirationDateTime": "datetime-value",
  "nextExpectedRanges": [
    "nextExpectedRanges-value"
  ]
}
```
