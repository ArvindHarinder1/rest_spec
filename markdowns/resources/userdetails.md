# UserDetails resource type



### JSON representation

Here is a JSON representation of the resource

```json
{
  "id": "String (identifier)",
  "userData": {
    "@odata.type": "microsoft.graph.UserDataCollection"
  },
  "version": "String"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|
|userData|[UserDataCollection](userdatacollection.md)||
|version|String||

### Relationships
None


### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get UserDetails](../api/userdetails_get.md) | [UserDetails](userdetails.md) |Read properties and relationships of userDetails object.|
|[Update](../api/userdetails_update.md) | [UserDetails](userdetails.md)	|Update UserDetails object. |
|[Delete](../api/userdetails_delete.md) | Void	|Delete UserDetails object. |

<!-- uuid: cb1acf38-53ff-4aa3-ab34-01ccce70cc59
2015-10-09 18:34:14 UTC -->