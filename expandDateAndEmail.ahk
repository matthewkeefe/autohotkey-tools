::~de::  ; This hotstring replaces "#de" with the current date and email
FormatTime, CurrentDateTime,, yyyy-MM-dd ; It will look like 2016-04-01
SendInput %CurrentDateTime% matt.keefe@cdk.com - 
return

::~dt::  ; This hotstring replaces "#dt" with the current date
FormatTime, CurrentDateTime,, yyyy-MM-dd ; It will look like 2016-04-01
SendInput %CurrentDateTime%
return