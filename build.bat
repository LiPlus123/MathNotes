@echo off
setlocal

set "ROOT=%~dp0"
set "LATEX_DIR=%ROOT%src\latex"
set "LEAN_DIR=%ROOT%src\lean"
set "LATEX_BUILD_DIR=%ROOT%build\.latex"
set "LEAN_BUILD_DIR=%ROOT%build\.lake"

if not exist "%LATEX_BUILD_DIR%" mkdir "%LATEX_BUILD_DIR%"
if not exist "%LEAN_BUILD_DIR%" mkdir "%LEAN_BUILD_DIR%"
if not exist "%LEAN_BUILD_DIR%\packages" mkdir "%LEAN_BUILD_DIR%\packages"

pushd "%LATEX_DIR%"
call latexmk -r latexmkrc -xelatex main.tex
if errorlevel 1 (
	set "EXIT_CODE=%ERRORLEVEL%"
	popd
	exit /b %EXIT_CODE%
)
popd

pushd "%LEAN_DIR%"
call lake build
if errorlevel 1 (
	set "EXIT_CODE=%ERRORLEVEL%"
	popd
	exit /b %EXIT_CODE%
)
popd

exit /b 0
