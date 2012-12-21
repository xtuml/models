@echo off
set BP_VERSION=3.6.0
set WORKSPACE=%~d0\cygwin\ws\mctest1012

::Check that a valid argument is specified
if "%1"=="Build" goto ArgsOK
if "%1"=="Execute" goto ArgsOK
if "%1"=="Import" goto ArgsOK
echo.
echo Usage:  BridgePoint_CLI ^<Build ^| Import ^| Execute^> ^<Argument List^>
echo.
echo Example:
echo     BridgePoint_CLI Build -project MicrowaveOven -buildConfig Debug -cleanCLI
echo. 
echo To list complete usage information for a command:
echo     BridgePoint_CLI Build -help
echo     BridgePoint_CLI Import -help
echo     BridgePoint_CLI Execute -help
echo.
echo Note that you must edit the WORKSPACE variable inside this BridgePoint_CLI.bat
echo to point at the appropriate workspace. For example: 
echo     set WORKSPACE=c:\workspaces\mydevelopment
echo.
echo For additional information, see the BridgePoint Command Line Interface 
echo documentation inside the BridgePoint Help system.
echo. 
goto exit
:ArgsOK

if not "%MGLS_LICENSE_FILE%"=="" goto SetCommonVariables
if not "%LM_LICENSE_FILE%"=="" goto LMLicenseConfigured
  ::
  :: Since the license path is not already set, use the standard location.  Users may
  :: choose to set the value in the environment, or modify the following line to point to the correct
  :: location (either local or remote).
  ::
  :: example configuration for a remote license server
  ::    set MGLS_LICENSE_FILE=1717@svr-taz-eng-05
  ::
  :: example configuration to query the user for the remote license server IP address
  ::   set /p ip=Type in the IP address of the license server:
  ::  set MGLS_LICENSE_FILE=1717@%ip%

  set MGLS_LICENSE_FILE=%~d0\MentorGraphics\BridgePoint\license\license.dat
goto SetCommonVariables

:LMLicenseConfigured
set MGLS_LICENSE_FILE=%LM_LICENSE_FILE%

:SetCommonVariables
echo Using MGLS_LICENSE_FILE=%MGLS_LICENSE_FILE%

::
:: DO NOT MODIFY ANY OF THE FOLLOWING LINES.
::
set PATH=%PATH%;%~d0\MentorGraphics\BridgePoint\tools\docgen\docbook
set MGC_EMBEDDED_HOME=%~d0\MentorGraphics\BridgePoint
set MGLS_DLL=
set MGLS_PKGINFO_FILE=
set MGLS_HOME=
set MGC_HOME=%MGC_EMBEDDED_HOME%\eclipse_extensions\BridgePoint\eclipse\plugins\com.mentor.nucleus.bp.core.win32.x86_%BP_VERSION%\os\win32\x86
set LAUNCHER=%MGC_EMBEDDED_HOME%\eclipse\plugins\org.eclipse.equinox.launcher_1.0.201.R35x_v20090715.jar
set APPLICATION=com.mentor.nucleus.bp.cli.%1
set BP_JVM=%MGC_EMBEDDED_HOME%\jre\bin\java.exe

:: Save the user current working directory
pushd .

:: Check for fonts that trip up generator
cd %MGC_EMBEDDED_HOME%\tools\fontchecker
fontchecker.exe

:: Run command line BridgePoint action
cd %MGC_EMBEDDED_HOME%\eclipse
set COMMAND=eclipsec.exe --launcher.suppressErrors -vm %BP_JVM% -clean -noSplash -data %WORKSPACE% -application %APPLICATION% %2 %3 %4 %5 %6
echo %COMMAND%
%COMMAND%

:: Change back to users directory
popd

:exit
