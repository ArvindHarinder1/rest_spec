# Create Task

Use this API to create a new Task.
### HTTP request
```http
POST /groups/<objectId>/tasks
POST /users/<objectId>/JoinedGroups/<objectId>/tasks
POST /drives/<id>/root/createdByUser/JoinedGroups/<objectId>/tasks

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

### Request body
In the request body, supply a JSON representation of [Task](../resources/task.md) object.


### Response
If successful, this method returns `201, Created` response code and [Task](../resources/task.md) object in the response body.

### Example
##### Response
Here is an example of the response.
```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 614
{
  "createdBy": "String-value",
  "assignedTo": "String-value",
  "planId": "String-value",
  "bucketId": "String-value",
  "title": "String-value",
  "orderHint": "String-value",
  "assigneePriority": "String-value",
  "percentComplete": 99,
  "startDate": "datetime-value",
  "assignedToDate": "datetime-value",
  "createdDate": "datetime-value",
  "assignedBy": "String-value",
  "dueDate": "datetime-value",
  "hasNotes": true,
  "previewType": "String-value",
  "completedDate": "datetime-value",
  "numberOfReferences": 99,
  "appliedCategories": {
  },
  "id": "String-value",
  "version": "String-value"
}
```
