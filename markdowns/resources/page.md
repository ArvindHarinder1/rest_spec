# Page resource type



#### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|Stream||
|contentUrl|String||
|createdByAppId|String||
|createdTime|DateTimeOffset||
|id|String| Read-only.|
|lastModifiedTime|DateTimeOffset||
|links|[PageLinks](pagelinks.md)||
|self|String||
|title|String||

#### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|parentNotebook|[Notebook](notebook.md)| Read-only.|
|parentSection|[Section](section.md)| Read-only.|

#### Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Page](../api/page_get.md) | Page |Read properties and relationships of page object.|
|[Update](../api/page_update.md) | Page	|Update Page object. |
|[Delete](../api/page_delete.md) | Page	|Delete Page object. |
|[Copytosection](../api/page_copytosection.md)|[CopyPageModel](copypagemodel.md)||
|[Patchcontent](../api/page_patchcontent.md)|[None](none.md)||
|[Thumbnail](../api/page_thumbnail.md)|Stream||
