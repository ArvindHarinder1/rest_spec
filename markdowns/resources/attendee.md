# Attendee resource type



#### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.Attendee"
}-->

```json
{
  "EmailAddress": {
    "@odata.type": "microsoft.graph.EmailAddress"
  },
  "Status": {
    "@odata.type": "microsoft.graph.ResponseStatus"
  },
  "Type": "String"
}

```
#### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|EmailAddress|[EmailAddress](emailaddress.md)||
|Status|[ResponseStatus](responsestatus.md)||
|Type|String| Possible values are: `Required`, `Optional`, `Resource`.|
