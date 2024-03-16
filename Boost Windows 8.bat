@echo "Welcome to boost Windows 8/8.1!"
@echo "Runing this script only on Admin  privileges"
@pause
powercfg -h off
bcdedit /deletevalue useplatformclock 
bcdedit /set disabledynamictick yes
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh winsoc reset
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0
net config server /HIDDEN:YES
del /q /f /s %WINDIR%\Temp\*.*
del /q /f /s %SYSTEMDRIVE%\Temp\*.*
del /q /f /s %Temp%\*.*
del /q /f /s %Tmp%\*.*
del /q /f /s %WINDIR%\Prefetch\*.*
del /q /f /s %SYSTEMDRIVE%\*.log
del /q /f /s %SYSTEMDRIVE%\*.bak
del /q /f /s %SYSTEMDRIVE%\*.gid
del /q /f /s  c:\Windows\SoftwareDistribution\*.*
del /q /f /s c:\Windows\Installer\*.*
sfc /cachesize=0
sfc /purgecache
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
del c:\WIN386.SWP