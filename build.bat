@echo off
setlocal

where wsl >nul 2>&1
if errorlevel 1 (
    echo Install WSL and Nix inside WSL first. See README.md. >&2
    exit /b 1
)

pushd "%~dp0"
wsl --exec bash ./build.sh %*
set "BUILD_EXIT=%ERRORLEVEL%"
popd
exit /b %BUILD_EXIT%
