# uploadSession resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.uploadsession"
}-->

```json
{
  "expirationDateTime": "String (timestamp)",
  "nextExpectedRanges": [
    "String-value"
  ],
  "uploadUrl": "String-value"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|expirationDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|nextExpectedRanges|String collection||
|uploadUrl|String||

<!-- uuid: 5d5b4380-023e-4fe0-ae65-c7b1c6f6300b
2015-10-19 09:07:26 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "uploadSession resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->