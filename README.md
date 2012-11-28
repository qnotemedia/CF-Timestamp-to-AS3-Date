# Coldfusion Timestamp to Actionscript 3 Date
This simple function will take in a raw Coldfusion timestamp string and convert it to an Actionscript 3 Date Object.

##Usage
```javascript
import com.qnotemedia.utils.CFtimestamp;
var ts:String = "{ts '2008-06-12 15:59:36.11'}";
var newTimestamp:Date = CFtimestamp.toDate(ts);
```