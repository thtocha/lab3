@echo off
set /p target_dir=Enter the directory path to search: 
set /p folder_name=Enter the name of the subdirectory to search: 

if not exist "%target_dir%" (
    echo Catalog %target_dir% not found.
    pause
    exit /b
)

setlocal enableDelayedExpansion
set found=0

for /d %%i in ("%target_dir%\*") do (
    if /i "%%~nxi"=="%folder_name%" (
        set found=1
        echo Subcatalog %%~nxi find in catalog %%~dpi.
    )
)

if !found! equ 0 (
    echo Subcatalog %folder_name% not found in catalog %target_dir%.
) 

pause
