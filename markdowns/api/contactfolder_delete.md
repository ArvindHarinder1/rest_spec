# Delete

Delete ContactFolder.
### HTTP request
```http
DELETE /users/<objectId>/ContactFolders/<Id>
DELETE /drives/<id>/root/createdByUser/ContactFolders/<Id>
DELETE /drives/<id>/root/lastModifiedByUser/ContactFolders/<Id>

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

<!-- uuid: f4f9a32b-0fde-42ac-8497-86cdbfdea819\n2015-10-09 15:13:08 UTC -->