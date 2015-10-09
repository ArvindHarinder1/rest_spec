# CopyPageModel resource type



### JSON representation

Here is a JSON representation of the resource

```json
{
  "contentUrl": "String",
  "createdByAppId": "String",
  "createdTime": "String (timestamp)",
  "id": "String",
  "lastModifiedTime": "String (timestamp)",
  "links": {
    "@odata.type": "microsoft.graph.PageLinks"
  },
  "parentNotebook": {
    "@odata.type": "microsoft.graph.CopyNotebookModel"
  },
  "parentSection": {
    "@odata.type": "microsoft.graph.CopySectionModel"
  },
  "self": "String",
  "title": "String"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentUrl|String||
|createdByAppId|String||
|createdTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String||
|lastModifiedTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|links|[PageLinks](pagelinks.md)||
|parentNotebook|[CopyNotebookModel](copynotebookmodel.md)||
|parentSection|[CopySectionModel](copysectionmodel.md)||
|self|String||
|title|String||

<!-- uuid: c6d5bc13-3911-4db5-9dcd-7b5add6e5a9c
2015-10-09 17:20:41 UTC -->