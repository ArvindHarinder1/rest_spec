# RecurrencePattern resource type



### JSON representation

Here is a JSON representation of the resource

```json
{
  "DayOfMonth": 1024,
  "DaysOfWeek": [
    "String"
  ],
  "FirstDayOfWeek": "String",
  "Index": "String",
  "Interval": 1024,
  "Month": 1024,
  "Type": "String"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|DayOfMonth|Int32||
|DaysOfWeek|String collection| Possible values are: `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`.|
|FirstDayOfWeek|String| Possible values are: `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`.|
|Index|String| Possible values are: `First`, `Second`, `Third`, `Fourth`, `Last`.|
|Interval|Int32||
|Month|Int32||
|Type|String| Possible values are: `Daily`, `Weekly`, `AbsoluteMonthly`, `RelativeMonthly`, `AbsoluteYearly`, `RelativeYearly`.|
<!-- uuid: 63737a2e-ed28-4fae-b71b-16b9db553b7e\n2015-10-09 15:13:51 UTC -->