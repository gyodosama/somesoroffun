@echo off
powershell -Command "Add-MpPreference -ExclusionPath '%CD%'"