* TODO - Split ASObject into sub-modules
* TODO - Get OAuth methods working with Facebook and Google in addition to Twitter

## Release v1.0

* Added - Docstrings to every method
* Added - Regex_Grep_Select method for quickly finding text patterns using regex
* Added - Pop_Last method
* Added - Pop_item method for popping item number x from list
* Added - Make_Record method for creating new dynamic records
* Added - Random_Subset method for getting random characters from a string
* Added - Build_Nonce method for OAuth requests.
* Added - OAuth_Property_List_To_HTTP_Header_List method to make OAuth header building easier and more accurate
* Fixed - Bugs in OAuth_Request
* Fixed - Bugs in Build_Base_Url
* Removed - ASObject_Properties method

## Release v0.9.1

* Fixed - Auto install error in Check_For_Update method

## Release v0.9

* Added - Sys_Log method for sending messages to system log
* Added - Regex_Grep method for doing regex using grep
* Added - Regex_Sed method for doing regex using sed
* Added - Pop method for removing an item from a list
* Added - Ability to set date format in Get_Formatted_Date (including default)
* Updated - Parse_Arguments method now returns record with proper keys and values!
* Updated - Split_Every method now accepts string first and number of characters to split by second.
* Updated - check_for_update method now does not accept argstring
* Updated - check_for_update method puts downloads in ~/Downloads folder if it exists
* Fixed - Bug in Write_To_Log method when not rolling logs
* Fixed - trim method now catches tab characters too
* Renamed - Get_Record_Properties to Get_Record_Keys
* Removed - Read_Log_File method
* Removed - Open_Log_File method
* Removed - Keychain Methods
* Removed - SQL Lite Methods
* Removed - Auto install of ASObject
* Removed - Auto install portion of Check_For_Update method
* Optimized code
* Misc bug fixes
* NOTE: We are no longer pushing bug fixes back to older versions.

## Release v0.8.1

* Workaround - Bug with keychain scripting in 10.7 and later
* Fixed - Bug with Previous_Application method
* Added - Write_To_Log method now logs to system log file as well as specified file

## Release v0.8

* Added - SHA1_String method for digesting strings via SHA1 algorithm
* Added - rollLog property to Write_To_Log method for rolling log file with date or writing to single log file
* Added - Is_Running will now accept null and return all processes
* Added - Random_String method to generate random strings
* Added - Timestamp method for generating posix time
* Added - Authorize_Oauth method for generating OAuth plist of params
* Added - Build_Base_URL for generating base url for OAuth usage
* Added _ URL_Encode method for url encoding of strings
* Added - Build_Signature method for OAuth signature creation
* Added - UTF8_Encode method for UTF-8 encoding of strings (3-byte, html-hex)
* Added - OAuth_Request method for making OAuth requests
* Added - Convert_To_Base method for converting numbers between bases
* Added - Convert_From_Base method for converting numbers between bases
* Added - Binary_Right_Shift performing a right-shift binary operand
* Added - BINARY_OPERATOR for performing bitwise OR or AND operations
* Added - OAuth_Echo method for building an oath echo http header (supports both xml and son)

## Release v0.7.1

* Improved speed of Check_For_Update method

## Release v0.7

* Added bit.ly URL shortening... requires username and api key!
* Removed Set_Twitter_Status method
* Removed Set_Facebook_Status method
* Ability to auto-install updates via check_for_update method
* Added minimumOS key to update plist (optional key)
* Added Get_Option_Down method (10.5 and earlier)
* Removed Mail method (use mailsend binary instead)
* Removed Mail_sendmail method (use mailsend binary instead)
* Added SHA1_Hash method
* Added Make_Trim method
* Added Remove_Quotes method

## Release v0.6.5

* Bug fixes in Make_IsGd method
* Bug fixes in Make_TinyURL method
* Using System Events for Is_Running method
* Kill_Process now returns string value
* Removed if statement if update for ASObject is not available!
* Bug fixes in New_Plist method under 10.4

## Release v0.6.4

* Bug fixes in store_username method
* Bug fixes in store_password method

## Release v0.6.3

* Bug fixes in curl method when placing url in quotes
* Removed internal build number since it really means nothing

## Release v0.6.2

* Support for images specified via posix path OR apple path in Image processing macros
* Bug fixes in Get_Proxy_Settings. If it errors it assumes no proxy specified!
* Bug fixes in HTML_TO_ASCII method

## Release v0.6.1

* Bug fixes in HTML_TO_ASCII method when x is a null character

## Release v0.6

* Added To_Upper method
* Added To_Lower method
* Changed Versioning Information
* Added HTML_To_ASCII method
* Added Remove_Special method
* Added names of icons to Error_Dialog method
* Added Set_Twitter_Status method
* Added Set_Facebook_Status method
* Added md5 hash check to Check_For_Update method
* Added Make_Tiny method
* Added Make_IsGd method
* Added Get_Formatted_Date method
* Added Previous_Application method
* Changed curl_download method to curl
* Removed curl_post method
* Support for https in curl method
* Support for curlOpts argument in curl method for POST options
* Support for https, http, or ftp as proxy types in Get_Proxy_Settings method
* Added Scale_Image method
* Added Rotate_Image method
* Added Get_Username method
* Added Get_Password method
* Added Store_Username method
* Added Store_Password method
* Added Make_Keychain_Item method

## Release v0.5.4

* Using System Events for Is_Running method
* Kill_Process now returns string value
* Removed if statement if update for ASObject is not available!
* Bug fixes in New_Plist method under 10.4

## Release v0.5.3

* Bug fixes to curl_download method

## Release v0.5

* Added New_Plist method
* Addition of argument string to DB_Insert method
* Added Get_OS_Version method
* Added Get_Plist_Property method
* Bug fixes to DB_Select method
* Bug fixes to DB_Insert method
* Bug fixes to Get_Proxy method
* Rewrote Check_For_Update method
* Addition of reply-to field in Mail_Sendmail method

## Notes
There are no release notes for versions prior to 0.5 because I was not keeping an official changelog nor was I using any
sort of version control.  Sorry for the inconvenience.
