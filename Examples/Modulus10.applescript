(*
Copyright 2007 Jesse Almanrode  (www.jacomputing.net)

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; If not, see <http://www.gnu.org/licenses/>
*)

--DESCRIPTION--
(*This program was written in order to show the power and flexibility of the ASObject script library.  This program uses an internal version of ASObject to perform the Luhn Algorithum check on a given set of numbers or to generate a number which will pass the Luhn Algorithum check.  This check has been used in the past to verify credit card numbers although more secure methods have since come into play.
*)

on run
	--Before the script can function we need to load the ASObject script file
	(*tell application "Finder"
		set MyResources to (home as string) & "Documents:Development:Builds:Debug:" as string
	end tell*)
	set MyResources to (path to me) & "Contents:Resources:Scripts:" as string --Bundled inside the application
	set ASObject to load script alias (MyResources & "ASObject.scpt") as alias --Loads the ASObject script into memory for calling of methods
	set mod10Number to "" --Just sets a variable
	
	repeat
		display dialog "What would you like to do?" buttons {"Exit", "Generate modulus 10", "Verify modulus 10"}
		
		if (button returned of result) contains "Verify" then
			repeat
				set dialog1 to display dialog "Please enter a number to run Modulus 10 on:" default answer mod10Number buttons {"Cancel", "Validate"} default button 2
				if button returned of dialog1 is "Validate" then
					try
						set someNumber to text returned of dialog1 as string
						Modulus_10(someNumber as string) of ASObject --Here we are passing the number to the ASObject script we loaded earlier. The result will be true if the number passes the check and false if the number does not.
						if (result) is true then
							display dialog "Modulus 10 successfully validated." buttons "Quit" default button 1
						else
							display dialog "Modulus 10 could not be validated." buttons "Quit" default button 1
						end if
						set mod10Number to "" -- Reset the variable for the next pass of the script.
						exit repeat
					on error
						Write_To_Log("Text entered was not an integer", "Modulus10") of ASObject
					end try
				else
					exit repeat
				end if
			end repeat
		else if (button returned of result) contains "Generate" then
			repeat
				set dialog1 to display dialog "Please the length of the modulus 10 number you wish to generate:" default answer "" buttons {"Cancel", "Generate"} default button 2
				if button returned of dialog1 is "Generate" then
					try
						set someNumber to text returned of dialog1 as string
						Generate_Modulus_10(someNumber as string) of ASObject --Here we call upon the ASObject script to generate a number of specified lenght that will pass the Luhn Algorithum.
						set mod10Number to result as string --This will allow us to varify the number we generated
						display dialog "Modulus 10 number is:" & return & mod10Number buttons "Ok" default button 1
						exit repeat
					on error
						Write_To_Log("Text entered was not an integer", "Modulus10") of ASObject
					end try
				else
					exit repeat
				end if
			end repeat
		else
			exit repeat --Quit
		end if
	end repeat
end run