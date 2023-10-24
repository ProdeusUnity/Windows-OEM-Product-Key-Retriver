@echo off
setlocal enabledelayedexpansion

:: Run the wmic command to get the OEM Windows key
for /f "tokens=2 delims==" %%A in ('wmic path softwarelicensingservice get OA3xOriginalProductKey /value') do (
    set "key=%%A"
)

:: Check if the key is empty or contains only spaces
if "%key%"=="" (
    set "message=Unable to retrieve the OEM Windows Key."
) else (
    set "message=Your OEM Windows Key is: %key%"
)

:: Display the message in an input box
set "vbscript=%temp%\popup.vbs"
echo msgbox "%message%",0,"OEM Windows Key" > %vbscript%
cscript /nologo %vbscript%
del %vbscript%

:: Clean up and exit
endlocal
