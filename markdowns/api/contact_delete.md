# Delete

Delete Contact.
### HTTP request
```http
DELETE /users/<objectId>/Contacts/<Id>
DELETE /drives/<id>/root/createdByUser/Contacts/<Id>
DELETE /drives/<id>/root/lastModifiedByUser/Contacts/<Id>

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

