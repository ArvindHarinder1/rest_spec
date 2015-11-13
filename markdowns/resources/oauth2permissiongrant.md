# oAuth2PermissionGrant resource type

Represents the OAuth 2.0 delegated permission scopes that have been granted to an application (represented by a service principal) as part of the user or admin consent process. 

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.oauth2permissiongrant"
}-->

```json
{
  "clientId": "string",
  "consentType": "string",
  "expiryTime": {"@odata.type": "microsoft.graph.dateTimeOffset"},
  "objectId": "string (identifier)",
  "principalId": "string",
  "resourceId": "string",
  "scope": "string",
  "startTime": {"@odata.type": "microsoft.graph.dateTimeOffset"}
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|clientId|string||
|consentType|string||
|expiryTime|[dateTimeOffset](datetimeoffset.md)||
|objectId|string| Read-only.|
|principalId|string||
|resourceId|string||
|scope|string||
|startTime|[dateTimeOffset](datetimeoffset.md)||

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get oAuth2PermissionGrant](../api/oauth2permissiongrant_get.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) |Read properties and relationships of oAuth2PermissionGrant object.|
|[Update](../api/oauth2permissiongrant_update.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md)	|Update oAuth2PermissionGrant object. |
|[Delete](../api/oauth2permissiongrant_delete.md) | None |Delete oAuth2PermissionGrant object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "oAuth2PermissionGrant resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->