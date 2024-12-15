@echo off
@REM setlocal enabledelayedexpansion

@REM set folder=~d

@REM for %%F in ("%folder%\*") do (
@REM     set "filename=%%~nxF"
@REM     set "newname=!filename:lcase=!"
@REM     ren "%%F" "!newname!"
@REM )

for /R %%G in (*) do (
    set "filename=%%~nxG"
    setlocal enabledelayedexpansion
    ren "%%G" "!filename:~0,-4!%%~xG"
    endlocal
)

echo Все файлы в указанной папке были переименованы в нижний регистр.
pause