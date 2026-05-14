@echo off
setlocal

set "ROOT=%~dp0"
set "LATEX_BUILD_DIR=%ROOT%build\.latex"
set "LEAN_BUILD_DIR=%ROOT%build\.lake"

if exist "%LATEX_BUILD_DIR%" rmdir /s /q "%LATEX_BUILD_DIR%"
if exist "%LEAN_BUILD_DIR%" rmdir /s /q "%LEAN_BUILD_DIR%"

exit /b 0