#!/bin/sh

CurrentUser=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`
SourceFile="/System/Library/User Template/Non_localized/Library/Preferences/com.rossetantoine.osirix.plist"

if [ -e "$SourceFile" ];
then
  cp "$SourceFile" /Users/$CurrentUser/Library/Preferences/
	chown $CurrentUser /Users/$CurrentUser/Library/Preferences/
fi

exit 0
