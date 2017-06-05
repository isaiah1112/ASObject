![ASObject](http://jacomputing.net/direct_download/ASObject.png)

## Overview

[ASObject][] is an AppleScript Library written complete in AppleScript!

## License

[ASObject][] is released under the [GNU Lesser General Public License v3.0][],
see the file LICENSE and LICENSE.lesser for the license text.

## Installation

To begin using ASObject in a script, make sure you have saved your script as a bundle and then simply copy the
**ASObject.scpt** file from the project *bin* directory of the git repo into the *Contents:Resource:Scripts* directory
inside the bundle.  Then, in your script, write the following:

    set MyResources to (path to me) & "Contents:Resources:Scripts:" as string
    set ASObject to load script alias (MyResources & "ASObject.scpt") as alias

You can now use the methods within ASObject to extend your script like so:

    return Total_List({1, 2, 3, 4, 5, 6, 7}) of ASObject

You can alternatively store the **ASObject.scpt** file elsewhere on your system (or use it directly from the git repo).
For example:

    tell application "Finder"
    	set MyResources to (home as string) & "AppleScript:asobject:bin:" as string
    end tell
    set ASObject to load script alias (MyResources & "ASObject.scpt") as alias
    return Total_List({1, 2, 3}) of ASObject


## Contributing

Comments and enhancements are very welcome.

Report any issues or feature requests on the [BitBucket bug
tracker](https://bitbucket.org/isaiah1112/asobject/issues?status=new&status=open). Please include a minimal
(not-) working example which reproduces the bug and, if appropriate, the
 traceback information.  Please do not request features already being worked
towards (see the TODO file).

Code contributions are encouraged: please feel free to [fork the
project](https://bitbucket.org/isaiah1112/asobject) and submit pull requests.


[GNU Lesser General Public License v3.0]: http://choosealicense.com/licenses/lgpl-3.0/ "LGPL v3"

[ASObject]: https://bitbucket.org/isaiah1112/asobject "ASObject"
