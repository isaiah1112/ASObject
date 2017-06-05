# ASObject

 An AppleScript Library that extends AppleScript using pure AppleScript

    Copyright (C) 2007-2015 Jesse Almanrode

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.



## TODOs

 Move Write_To_Log to use kwargs

 Move Scale_Image to use kwargs

 Move rotate_image to use kwargs

 Move curl to use kwargs

 Move Kill_Process to use kwargs

 Move Get_Formatted_Date to use kwargs and combine with timeStamp


## Properties

debug : true


## Functions

**run**()

	 Only called if you specifically call it or open it in Script Editor and push 'RUN'. 
	It runs the ASObject_Update method and then prints info about ASObject

**ASObject_Update**()

	 Checks for an update to ASObject
	
	:return: None

**Countdown_Dialog**(*dialogText, totalDelay*)

	 Create a repeating dialog that can display a countdown message
	
	:param dialogText: String for dialog
	:param totalDelay: Integer of how long the countdown should be (in seconds)
	:return: True if countdown completed or "Ok" button was pressed, script canceled otherwise

**error_dialog**(*ErrorTitle, errorMessage, ErrorType*)

	 Create an alert window with specific priorities
	
	:param ErrorTitle: String of exception type
	:param errorMessage: String of exception details
	:param ErrorType: String of (info, warning, critical)
	:return: Alert Window or Exception

**Total_List**(*thelist*)

	 Add up a list of numbers
		
	:param thelist: List of numbers
	:return: Integer or Exception	

**Average_List**(*thelist*)

	 Find an average for a list of numbers
		
	:param thelist: List of numbers
	:return: Integer/Float or Exception

**Sort_Ascending**(*thelist*)

	 Sort a list in ascending order (if numbers) or alphabetically (if strings)
	
	:param thelist: List of numbers or strings
	:return: Sorted List or Exception

**Sort_Descending**(*thelist*)

	 Sort a list in descending order (if integers) or reverse alphabetically (if strings)
	
	:param thelist: List of integers or strings
	:return: List

**Item_Number**(*theValue, thelist*)

	 Get the index of an item in a list
		
	:param theValue: Value of item to find in list
	:param thelist: List
	:return: Integer or Exception

**Pop**(*itemsToDelete, thelist*)

	 Remove items from a list
			
	:param itemsToDelete: Item or list of items to remove
	:param thelist: List
	:return: List

**Pop_Item**(*itemInt, thelist*)

	 Remove item at identifier from a list
		
	:param itemInt: Item id to remove
	:param thelist: List
	:return: List

**Pop_Last**(*thelist*)

	 Remove the last item from a list and return the list
			
	:param thelist: List
	:return: List

**Write_To_Log**(*logContents, appName, rollLog*)

	 Write a message to a log file
			
	:param logContents: String to log
	:param appName: String to name log directory (or name of log file if rollLog is false)
	:param rollLog: Boolean (Should the log file roll daily)
	:return: true or false

**System_Log**(*logContents, appName*)

	 Write a message to syslog
			
	:param logContents: String to log
	:param appName: String to use as the tag flag (via logger command)
	:return: Stdout

**Read_Plist**(*posixString*)

	 Return a record of values from a plist file
	
	:param posixString: Path to the plist file
	:return: Record or Exception

**Get_Plist_Property**(*keyName, posixString*)

	 Get the value of a specific property from a plist file
		
	:param keyName: Name of the property to get
	:param posixString: Path to the plist file
	:return: Value or Exception

**Write_Plist**(*keyName, keyValue, posixString*)

	 Write a key and value to a plist file
	
	:param keyName: Name of the key
	:param keyValue: Name of the value
	:param posixString: Path to the plist file
	:return: true or Exception

**New_Plist**(*posixString*)

	 Make a new plist file
		
	:param posixString: Path to plist file
	:return: true or Exception

**Write_Key**(*keyName, defaultValue, posixString*)

	 Add a key to a plist file
	
	:param keyName: Name of the key to add
	:param defaultValue: Value for the key
	:param posixString: Path to the plist file
	:return: true or Exception

**Delete_Key**(*keyName, posixString*)

	 Delete a key from a plist file (uses 'defaults delete' command)
	
	:param keyName: Name of the key
	:param posixString: Path to the plist file
	:return: true or Exception

**Scale_Image**(*argString*)

	 Scale an image using Image Events 
	Requires path to image to process, percentage to scale image to, and location (including new name) to place scaled image.
	
	:param source: Posix path to source image file
	:param output: Posix path to output image file
	:param scale: Factor to scale the image by (will be devided by 100)
	:param outputType: Format of the output file (if not specified source format will be used)
	:return: String or Exception

**rotate_image**(*argString*)

	 Rotat an image by 90 degrees using Image Events
	Requires path to source image and direction of rotation (this will be performed in 90 degree increments)
	
	:param source: Posix path to the source image file
	:param output: Posix path to the output image file
	:param direction: Direction to rotate 90 degrees (right or left)
	:return: String or Exception

**To_Apple_String**(*posixString*)

	 Convert a posix path to an AppleScript path	
	
	:param posixString: Posix Path
	:return: String

**Search_And_Replace**(*someString, firstDelimiter, secondDelimiter*)

	 Replace characters in strings (using AppleScript text item delimiters)
		
	:param someString: String
	:param firstDelimiter: String to be replaced
	:param secondDelimiter: String to replace
	:return: String

**split**(*someString, theDelimiter*)

	 Split a string into a list (using AppleScript text item delimiters
	
	:param someString: String
	:param theDelimiter: String to splist the string by
	:return: List

**Split_Every**(*someString, numChar*)

	 Split a string into a list every x number of characters
			
	:param someString: String
	:param numChar: Integer
	:return: List

**join**(*someList, theDelimiter*)

	 Join a list into a string (using AppleScript text item delimiters
	
	:param someList: List
	:param theDelimiter: String to join list by
	:return: String

**trim**(*someString*)

	 Removes whitespace from the beginning and end of a string

	:param someString: String
	:return: String

**Is_POSIX**(*someString*)

	 Is the string a posix path
		
	:param someString: String
	:return: true or false

**To_Upper**(*someString*)

	 Convert lowercase characters to upper case (using ASCII values)
	
	:param someString: String
	:return: String

**To_Lower**(*someString*)

	 Convert uppercase characters to lowercase (usinc ASCII values)
	
	:param someString: String
	:return: String

**remove_special**(*someString*)

	 Remove special characters from a string (using ASCII values)
		
	:param someString: String
	:return: String

**Remove_Quotes**(*someString*)

	 Remove quotes from a string (using ASCII values)
	
	:param someString: String
	:return: String

**HTML_To_ASCII**(*someString*)

	 Convert HTML encoded string to ASCII encoded string
	
	:param someString: String
	:return: String

**Random_String**(*minLength, maxLength*)

	 Generate a random string of a given length
	
	:param minLength: Integer for minimum length
	:param maxLength: Integer for max length
	:return: String

**random_subset**(*someString, maxLength*)

	 Select a random subset of characters from a string up to a given length
			
	:param someString: A string
	:param maxLength: Length of the string you wish to generate
	:return: String

**URL_Encode**(*someString*)

	 URL encode an ASCII string
		
	:param someString: String
	:return: String

**utf8_encode**(*someString, encodeType*)

	 utf8 encode a string
	
	:param someString: String
	:param encodeType: One of (3-byte, html-hex)
	:return: String

**Regex_Grep**(*someString, regex*)

	 Use grep to regex a string
		
	:param someString: String
	:param regex: Grep regex
	:return: String or Exception

**Regex_Sed**(*someString, regex*)

	 Use sed to regex a string
	
	:param someString: String
	:param regex: Sed regex
	:return: String or Exception

**Regex_Grep_Select**(*someString, regex*)

	 Use grep to regex a string and return the regex match
		
	:param someString: String
	:param regex: Sed regex
	:return: String or Exception

**Modulus_10**(*theNum*)

	 Verify a number using the luhn algorithm
	
	..note::
		
		The modulus 10 algorithm can be explained in full at http://en.wikipedia.org/wiki/Luhn_algorithm
	
	:param theNum: Integer
	:return: true or false

**Generate_Modulus_10**(*numLength*)

	 Generate a number that passes the luhn algorithm
	
	:param numLength: Integer for the length of the number you wish to generate
	:return: String of integers

**Congruence**(*numA, numB, numN*)

	 Is A congruent to B modulo N
	
	:param numA: Integer
	:param numB: Integer
	:param numN: Integer
	:return: true or false

**Convert_To_Base**(*aNumber, base*)

	 Convert a decimal number to a different base (currently base 2 to base 16 are supported)
	
	:param aNumber: Number to convert
	:param base: Integer of base to convert to
	:return: String for base

**Convert_From_Base**(*numberString, base*)

	 Convert a number from a base to decimal
	
	:param numberString: String of base
	:param base: Integer for base to convert to
	:return: String

**Binary_Right_Shift**(*num1, num2*)

	 Perform a binary shift of a decimal number
		
	:param num1: Decimal number to shift
	:parm num2: Numver of places to shift
	:return: Decimal integer

**BINARY_OPERATOR**(*num1, num2, Operand*)

	 Perform bitwise oprations on decimal numbers (https://en.wikipedia.org/wiki/Bitwise_operation)
	
	:param num1: Integer
	:param num2: Integer
	:param Operand: Binary operator of (or, and)
	:return: Decimal Integer

**curl**(*argString*)

	 An attempt to wrap the 'curl' command in AppleScript
	
	:param remote: The URL to curl (http, https, ftp)
	:param output: Path to an output file
	:param options: Non kwarg options to send to curl (GET POST)
	:return: String or Exception

**Get_Record_Keys**(*theRecord*)

	 Returns a list of the names of property list items
	
	:param theRecord: Record to get keys for
	:return: List or Exception

**make_record**(*keyval_list*)

	 Build a record from a two dimensional list
	
	:param keyval_list: List of [[key,val],[key,val]]
	:return: Record or Exception


**MD5_Hash**(*posixPath*)

	 Create an MD5 hash of a file
		
	:param posixPath: Path to file
	:return: String

**MD5_String**(*theString*)

	 Create an MD5 hash of a given string

	:param theString: String
	:return: String

**Compare_Files**(*file1, file2*)

	 Compare two files via MD5 hash
	
	:param file1: Path to file
	:param file2: Path to file
	:return: true or false

**Compare_MD5**(*FilePath, md5String*)

	 Compare a file to a pre-defined md5 string

	:param FilePath: Path to file
	:param md5String: String
	:return: true or false

**SHA1_Hash**(*posixPath*)

	 Hash a file using the SHA1 algorithm
	
	:param posixPath: Path to file
	:return: String

**SHA1_String**(*someString*)

	 Run the SHA1 algorithm on a specified string
	
	:param someString: String to hash
	:return: String

**Is_Running**(*appName*)

	 Determine if a named process is running using System Events
	
	:param appName: String
	:return: true or false

**Kill_Process**(*appName, doRepeat*)

	 Kill a given process using the 'killall' command
	
	:param appName: String
	:param doRepeat: Boolean (Attempt kill 3 and then kill 9 if process doesn\'t die
	:return: String or Exception

**Previous_Application**()

	 Attempt to figure out what the previous forward facing app was using System Events and GUI Scripting
	This can be helpful if you want to find out what application was the frontmost prior to a script launching
	
	:return: String or Exception	

**Get_Option_Down**()

	 Attempt to determine if the option key is being held down using System Events and KeyboardViewerServer
	
	..note::
	
		Only works in OS X 10.6 or earlier
	
	:return: true or false

**Get_IP_Addresses**(*ipV6*)

	 Attempt to find all IP addresses on a machine using 'ifconfig' command
	
	:param ipV6: Boolean - Find IPv6 addresses
	:return: List

**Get_Proxy_Settings**(*proxyType*)

	 Attempt to find the proxy settings for currently active network interfaces using 'networksetup'
	
	:param proxyType: String of (http, https, ftp)
	:return: String or Exception

**Get_OS_Version**()

	 Get OS X version number via 'sw_vers' command
		
	:return: String

**parse_arguments**(*argString*)

	 Parse a string formatted as --key value into a record of lists of keys and values
	
	:param argString: String to parse
	:return: Record of {argFlags: {}, argValues: {}} or Exception

**Check_For_Update**(*appName, AppVersion, serverURL*)

	 Perform a software update check

	:param appName: String of application name or identifier
	:param AppVersion: String of version (e.g "1.0")
	:param serverURL: String of URL to plist file (e.g. http://example.com/updates/myappupdates.plist
	:return: String or Exception
		
	..note::
		
		File should be a plist that conforms to the plist in the ASObject Documentation

	The Check\_For\_Update method uses a lot of the methods within ASObject to download a plist file,
	parse it for app and version info, determine if an update is available, show the info about the
	update to the user, and then download it if they choose to update to the new version.

**Get_Formatted_Date**(*dateFormat*)

	 Get a date string formatted using the 'date' command
		
	:param dateFormat: String of date format (default if "" = '+%Y-%m-%d')
	:return: String

**timeStamp**()

	 Get the current time in seconds via the 'date' command
		
	:return: String

**Make_TinyURL**(*someUrl*)

	 Use tinyurl.com's API to make a URL smaller
	
	:param someUrl: String
	:return: String

**Make_IsGd**(*someUrl*)

	 Use is.gd's API to make a URL smaller
	
	:param someUrl: String
	:return: String

**Make_BitLy**(*someUrl, username, apiKey*)

	 Use bit.ly's API to make a URL smaller
	
	:param someUrl: String
	:param username: String
	:param apiKey: String
	:return: String

**Make_Trim**(*someUrl*)

	 Use tr.im's API to make a URL smaller
	
	:param someUrl: String
	:return: String or Exception

**Authorize_OAuth**(*theUser, theKey, theSecret, storeAppKeys*)

	 Attempt to build OAuth tokens for use with Twitter's API
	
	:param theUser: String of twitter username
	:param theKey: String of twitter app api key
	:param theSecret: String of twitter app api secret
	:param storeAppKeys: Boolean (store teh consumerKey and consumerSecret in plist file
	:return: Value of OAuth Keys for theUser stored in plist file or Exception
	
	..note::
		
		This method does launch a user's default web browser to obtain an out of band (OOB) pin to complete the token setup

**Build_Base_URL**(*httpMethod, baseURI, queryParams*)

	 NEEDS Documentation
	
	:param httpMethod:
	:param baseURI:
	:param queryParams:
	:return: 

**Build_Signature**(*baseString, consumerSecret, tokenSecret*)

	 Needs Documentation

	:param baseString:
	:param consumerSecret:
	:param tokenSecret:
	:return:

**build_nonce**()

	 Build a nonce string that is a specific length
		
	:return: String

**OAuth_Request**(*theUser, theUrl, theData, appKeys*)

	 Needs Documentation
	
	:param theUser:
	:param theUrl:
	:param theData:
	:param appKeys:
	:return:

**OAuth_Echo**(*theUser, appKeys, returnFormat*)

	 Build an OAuth Echo for a third party API to use with Twitter OAuth
		
	:param theUser: String of username 
	:param appKeys: Record of Application API ConsuumerKey and ConsumerSecret
	:param returnFormat: String of xml or json
	:return: String

**OAuth_Property_List_To_HTTP_Header_List**(*oauthHeaderList*)

	 Take a property list and move it to an HTTP Header List
		
	:param oauthHeaderList: List
	:return: List

