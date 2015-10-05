# TaskBoardTaskFormat resource type



#### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|
|orderHint|String||
|type|String| Read-only. Possible values are: `Status`, `AssignedTo`, `Bucket`.|
|version|String||

#### Relationships
None


#### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TaskBoardTaskFormat](../api/taskboardtaskformat_get.md) | [TaskBoardTaskFormat](taskboardtaskformat.md) |Read properties and relationships of taskBoardTaskFormat object.|
|[Update](../api/taskboardtaskformat_update.md) | [TaskBoardTaskFormat](taskboardtaskformat.md)	|Update TaskBoardTaskFormat object. |
|[Delete](../api/taskboardtaskformat_delete.md) | Void	|Delete TaskBoardTaskFormat object. |
