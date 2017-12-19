echo off
for %%f in ( * ) do call :sub "%%f"
for /D %%f in ( * ) do call :sub "%%f"
exit /b

:sub
set fname=%1
set fname=%fname: =_%
ren %1 %fname%
goto :EOF
