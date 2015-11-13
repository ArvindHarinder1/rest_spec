# page: patchContent


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<objectId>/notes/pages/<id>/patchContent
POST /groups/<objectId>/notes/pages/<id>/patchContent
POST /drive/root/createdByUser/notes/pages/<id>/patchContent

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|commands|patchContentCommand||

### Response
If successful, this method returns `200, OK` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "page_patchcontent"
}-->
```http
POST https://graph.microsoft.com/v1.0/users/<objectId>/notes/pages/<id>/patchContent
Content-type: application/json
Content-length: 156

{
  "commands": [
    {
      "action": {
      },
      "target": "target-value",
      "content": "content-value",
      "position": {
      }
    }
  ]
}
```

##### Response
Here is an example of the response. Note: The response object may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.none"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "page: patchContent",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->