@echo off
setlocal

md "%~1\x86" >nul
md "%~1\x64" >nul
md "%~1\AnyX86" >nul
md "%~1\AnyX64" >nul

copy /B /V /Y Win32\Release\WMIMonC.dll         "%~1\x86\WMIMonC.dll" >nul
copy /B /V /Y Win32\Release\WMITrace.exe        "%~1\x86\WMITrace.exe" >nul
copy /B /V /Y WMIMon\bin\x86\Release\WMIMon.exe "%~1\x86\WMIMon.exe" >nul

copy /B /V /Y x64\Release\WMIMonC.dll           "%~1\x64\WMIMonC.dll" >nul
copy /B /V /Y x64\Release\WMITrace.exe          "%~1\x64\WMITrace.exe" >nul
copy /B /V /Y WMIMon\bin\x64\Release\WMIMon.exe "%~1\x64\WMIMon.exe" >nul

copy /B /V /Y Win32\Release\WMIMonC.dll         "%~1\AnyX86\WMIMonC.dll" >nul
copy /B /V /Y Win32\Release\WMITrace.exe        "%~1\AnyX86\WMITrace.exe" >nul
copy /B /V /Y WMIMon\bin\Any\Release\WMIMon.exe "%~1\AnyX86\WMIMon.exe" >nul

copy /B /V /Y x64\Release\WMIMonC.dll           "%~1\AnyX64\WMIMonC.dll" >nul
copy /B /V /Y x64\Release\WMITrace.exe          "%~1\AnyX64\WMITrace.exe" >nul
copy /B /V /Y WMIMon\bin\Any\Release\WMIMon.exe "%~1\AnyX64\WMIMon.exe" >nul

endlocal & echo on & goto :eof
