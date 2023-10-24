# Windows-OEM-Product-Key-Retriver
Batch Script to obtain the OEM License key on a Windows computer

# What Is The Purpose Of This Script?
None really, I made this script in my spare time

# What Exactly Does This Script Do?
This script retrieves the OEM Product Key from a computer, OEM Keys are those used on devices sold by manufactuers (example: Dell, Asus, HP, Lenovo, etc.), these keys are usually stored in the UEFI after 2012, and will always reactivate the computer in the event you need to reinstall windows, however they cannot be transferred, and they die when the computer dies.

As per what the script is doing to retrieve it, it uses WMIC and VBScript, WMIC to retrieve the key and VBScript to create the text box to display the key

This is the WMIC Command normally used to retireve the key `wmic path softwarelicensingservice get OA3xOriginalProductKey /value`
And this command creates the VBScript to show it `set "vbscript=%temp%\popup.vbs"
echo msgbox "%message%",0,"OEM Windows Key" > %vbscript%
cscript /nologo %vbscript%
del %vbscript%`

# Does This Script Collect Data, Upload Or Connect To The Internet In Any Way?
No, that is not the intention of this script, it simply exists to show the key on the UEFI, it does not have any capability to send any data. Don't believe me? This is what VirusTotal code insights says 

"The code snippet is a batch script that retrieves the OEM Windows key from the system and displays it in an input box. It uses the `wmic` command to get the key and then checks if the key is empty or contains only spaces. If the key is valid, it displays the key in an input box using a VBScript script. Finally, it cleans up and exits.

The code does not contain any obfuscated code or remote file downloads. It does not pose any security risks or recommendations."

Additonally you can always look at the code if you're THAT paranoid.

# Will This Work For Retail Keys?

No, this command does not work with retail keys since they aren't stored in the UEFI, these keys also don't die, as they can be transferred.
