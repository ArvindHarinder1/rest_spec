# Update PlanDetails

Update the properties of plandetails object.
### HTTP request
```http
PATCH /plans/<id>/details
PATCH /users/<objectId>/plans/<id>/details
PATCH /groups/<objectId>/plans/<id>/details
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|category0Description|String||
|category1Description|String||
|category2Description|String||
|category3Description|String||
|category4Description|String||
|category5Description|String||
|sharedWith|UserIdCollection||
|version|String||

### Response
If successful, this method returns a `200 OK` response code and updated [PlanDetails](../resources/plandetails.md) object in the response body.
### Example
##### Request
Here is an example of the request.
```http
PUT /plans/<id>/details
Content-type: application/json
Content-length: 330
{
  "sharedWith": {
  },
  "category0Description": "String-value",
  "category1Description": "String-value",
  "category2Description": "String-value",
  "category3Description": "String-value",
  "category4Description": "String-value",
  "category5Description": "String-value",
  "id": "String-value",
  "version": "String-value"
}
```
##### Response
Here is an example of the response.
```json
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 330
{
  "sharedWith": {
  },
  "category0Description": "String-value",
  "category1Description": "String-value",
  "category2Description": "String-value",
  "category3Description": "String-value",
  "category4Description": "String-value",
  "category5Description": "String-value",
  "id": "String-value",
  "version": "String-value"
}
```
