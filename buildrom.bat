@echo off
REM buildrom.bat
where docker >nul 2>&1
if errorlevel 1 (
    echo Docker is not installed, please install it and try again.
    PAUSE
    exit /b 1
)
docker run --rm -v "%cd%":/project -w /project antimattur/mksc %*