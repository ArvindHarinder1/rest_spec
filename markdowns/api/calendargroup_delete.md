# Delete

Delete CalendarGroup.
### HTTP request
```http
DELETE /users/<objectId>/CalendarGroups/<Id>
DELETE /drives/<id>/root/createdByUser/CalendarGroups/<Id>
DELETE /drives/<id>/root/lastModifiedByUser/CalendarGroups/<Id>

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.


<!-- uuid: 0abeedf1-6555-457c-913a-b254b0215f49
2015-10-09 15:58:16 UTC -->