# Delete

Delete User.
### HTTP request
```http
DELETE /users/<objectId>
DELETE /drives/<id>/root/createdByUser
DELETE /drives/<id>/root/lastModifiedByUser

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.


<!-- uuid: f03ffb1a-8247-4665-8010-dc958a70cfb0\n2015-10-09 15:15:47 UTC -->