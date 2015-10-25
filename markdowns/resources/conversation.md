# Conversation resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "Threads"
  ],
  "@odata.type": "microsoft.graph.conversation"
}-->

```json
{
  "HasAttachments": true,
  "Id": "String-value (identifier)",
  "LastDeliveredDateTime": "String (timestamp)",
  "Preview": "String-value",
  "Threads": [
    {
      "@odata.type": "microsoft.graph.conversationthread"
    }
  ],
  "Topic": "String-value",
  "UniqueSenders": [
    "String-value"
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|HasAttachments|Boolean||
|Id|String| Read-only.|
|LastDeliveredDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|Preview|String||
|Topic|String||
|UniqueSenders|String collection||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|Threads|[ConversationThread](conversationthread.md) collection| Read-only. Nullable.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Conversation](../api/conversation_get.md) | [Conversation](conversation.md) |Read properties and relationships of conversation object.|
|[Create Thread](../api/conversation_post_threads.md) |[ConversationThread](conversationthread.md)| Create a new Thread by posting to the Threads collection.|
|[List Thread](../api/conversation_post_threads.md) |[ConversationThread](conversationthread.md)| Get a Thread object collection.|
|[Update](../api/threads_update.md) | [Threads](threads.md)	|Update Threads object. |
|[Delete](../api/threads_delete.md) | None |Delete Threads object. |

<!-- uuid: 972508eb-009b-45ab-822e-fdc84c3a8ebf
2015-10-25 12:45:03 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Threads resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->