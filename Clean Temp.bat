@echo off
:: Change directory to the desktop using the localized folder name

:: Change to the user's profile directory
cd /d "%TEMP%"

:: Delete all files in the TEMP directory
del /q *.*

:: Delete all subdirectories and their contents in the TEMP directory
for /d %%x in (*) do rd /s /q "%%x"

cd /d "%SystemRoot%\TEMP"

del /q *.*

for /d %%x in (*) do rd /s /q "%%x"
