# Update Event

Update the properties of event object.
#### HTTP request
<!-- { "blockType": "ignored" } -->
```http

```

#### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample of how the HTTP headers used by the API could be displayed.|

#### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|Attendees|Attendee||
|Body|ItemBody||
|BodyPreview|String||
|Categories|String||
|ChangeKey|String||
|DateTimeCreated|DateTimeOffset||
|DateTimeLastModified|DateTimeOffset||
|End|DateTimeOffset||
|EndTimeZone|String||
|HasAttachments|Boolean||
|Importance|String| Possible values are: `isExclusive` true,`options` {"Low"=>{"value"=>"0", "description"=>""}, "Normal"=>{"value"=>"1", "description"=>""}, "High"=>{"value"=>"2", "description"=>""}}|
|IsAllDay|Boolean||
|IsCancelled|Boolean||
|IsOrganizer|Boolean||
|Location|Location||
|Organizer|Recipient||
|OriginalStart|DateTimeOffset||
|Recurrence|PatternedRecurrence||
|Reminder|Int32||
|ResponseRequested|Boolean||
|ResponseStatus|ResponseStatus||
|SeriesMasterId|String||
|ShowAs|String| Possible values are: `isExclusive` true,`options` {"Free"=>{"value"=>"0", "description"=>""}, "Tentative"=>{"value"=>"1", "description"=>""}, "Busy"=>{"value"=>"2", "description"=>""}, "Oof"=>{"value"=>"3", "description"=>""}, "WorkingElsewhere"=>{"value"=>"4", "description"=>""}, "Unknown"=>{"value"=>"-1", "description"=>""}}|
|Start|DateTimeOffset||
|StartTimeZone|String||
|Subject|String||
|Type|String| Possible values are: `isExclusive` true,`options` {"SingleInstance"=>{"value"=>"0", "description"=>""}, "Occurrence"=>{"value"=>"1", "description"=>""}, "Exception"=>{"value"=>"2", "description"=>""}, "SeriesMaster"=>{"value"=>"3", "description"=>""}}|
|WebLink|String||
|iCalUId|String||

#### Response
If successful, this method returns a `200 OK` response code and updated [Event](../resources/event.md) object in the response body.
