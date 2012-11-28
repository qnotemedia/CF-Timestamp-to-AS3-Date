package com.qnotemedia.utils {
	/*
		usage:
		import com.qnotemedia.utils.CFtimestamp;
		var ts:String = "{ts '2008-06-12 15:59:36.11'}";
		var newTimestamp:Date = CFtimestamp.toDate(ts);
	*/
	public class CFtimestamp {
		public static function toDate(timestamp:String):Date {
			var date:String = timestamp.split("'")[1].split(" ")[0];
			var time:String = timestamp.split("'")[1].split(" ")[1].split("'")[0];
			var year:uint = date.split("-")[0];
			var month:uint = date.split("-")[1] - 1;
			var day:uint = date.split("-")[2];
			var hour:uint = time.split(":")[0];
			var minute:uint = time.split(":")[1];
			var second:uint = time.split(":")[2].split(".")[0];
			var millisecond:uint = time.split(":")[2].split(".")[2];
			return new Date(year,month,day,hour,minute,second,millisecond);
		}
	}
}