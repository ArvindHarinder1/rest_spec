# Create Attachment

Use this API to create a new Attachment.
### HTTP request
```http
POST /users/<objectId>/Messages/<Id>/Attachments
POST /drive/root/createdByUser/Messages/<Id>/Attachments
POST /users/<objectId>/RootFolder/Messages/<Id>/Attachments

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, supply a JSON representation of [Attachment](../resources/attachment.md) object.


### Response
If successful, this method returns `201, Created` response code and [Attachment](../resources/attachment.md) object in the response body.

### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 162
{
  "Name": "Name-value",
  "ContentType": "ContentType-value",
  "Size": 99,
  "IsInline": true,
  "DateTimeLastModified": "datetime-value",
  "Id": "Id-value"
}
```

<!-- uuid: 6e52393c-39ef-474b-80c5-f7bba8145a63
2015-10-09 17:20:41 UTC -->