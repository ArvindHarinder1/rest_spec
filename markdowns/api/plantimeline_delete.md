# Delete

Delete PlanTimeline.
### HTTP request
```http
DELETE /plans/<id>/timeline
DELETE /users/<objectId>/plans/<id>/timeline
DELETE /groups/<objectId>/plans/<id>/timeline

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

<!-- uuid: f6ecdaf4-ba7c-4877-b604-afd355e8f042\n2015-10-09 15:13:51 UTC -->