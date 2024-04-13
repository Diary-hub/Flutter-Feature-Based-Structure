@echo off
setlocal enabledelayedexpansion

rem Set the directory path to the Lib folder
set "LibFolder=%~dp0\lib"

rem Delete all files named "DELETE.ME" in the Lib folder and its subfolders
for /r "%LibFolder%" %%i in (DELETE.ME) do (
    del "%%i"
    echo Deleted: "%%i"
)

rem Delete the batch file itself
del "%~f0"
