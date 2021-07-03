cls

echo set WshShell = WScript.CreateObject("WScript.Shell") > %tmp%\tmp.vbs
echo WScript.Quit (WshShell.Popup( "This file may create popups like this one do no worry this program will not harm your computer" ,10 ,"Click OK", 0)) >> %tmp%\tmp.vbs
cscript /nologo %tmp%\tmp.vbs
if %errorlevel%==1 (
  echo You Clicked OK
) else (
  echo The Message timed out.
)
del %tmp%\tmp.vbs

hello.bat