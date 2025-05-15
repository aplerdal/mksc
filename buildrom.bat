@echo off
REM buildrom.bat
docker run --rm -v "%cd%":/project -w /project antimattur/mksc %*