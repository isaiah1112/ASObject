
-- These properties are not required to be set; however, I find it makes it easier to update the app version when it is in a property at the top of the script file.
property MY_APP_VERSION : "1.5"
property APPLICATION_NAME : "ExampleApp"
property UPDATE_PLIST_URL : "http://somesite.com/example.plist"

-- After loading ASObject into your script simply run the following command to perform an update check on the script
Check_For_Update("--appName" & APPLICATION_NAME & " --appversion " & MY_APP_VERSION & " --serverurl " & UPDATE_PLIST_URL) of ASObject

(* NOTES:

As of version 0.7 of ASObject you can use the flag --minimumOS to have the check for update method check your current os version against what is in the plist file to add a set of requirements for scripts or updates.

As of version 0.6 of ASObject you can include an MD5 has of the update file in your plist file.  This hash is used by ASObject to ensure that the file it downloads is 100% complete.

*)