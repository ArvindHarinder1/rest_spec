# Delete

Delete Notebook.
### HTTP request
```http
DELETE /users/<objectId>/notes/notebooks/<id>
DELETE /users/<objectId>/notes/pages/<id>/parentNotebook
DELETE /users/<objectId>/notes/sections/<id>/parentNotebook

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.


<!-- uuid: c34dde17-c9db-464a-aa5c-0dead6759003\n2015-10-09 15:15:45 UTC -->