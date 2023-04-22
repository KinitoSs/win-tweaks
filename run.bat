@echo off

echo Starting WinXCorners…
start WinXCorners.exe

echo Starting CenterTaskbar…
start CenterTaskbar.exe

echo Checking Windows version…
ver | findstr /i "10." > nul
if %errorlevel% == 0 (
echo Starting Win-10 Virtual Desktop Enhancer…
start win-10-virtual-desktop-enhancer\virtual-desktop-enhancer.exe
) else (
ver | findstr /i "Version 11." > nul
if %errorlevel% == 0 (
echo Starting Win-11 Virtual Desktop Enhancer…
start win-11-virtual-desktop-enhancer\virtual-desktop-enhancer.exe
) else (
echo Windows version not supported.
)
)

echo All programs started!