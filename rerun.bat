@echo off
py rerunner.py True
if %errorlevel% neq 0 (
	pause
	exit)
cd combining
py catcher.py
if %errorlevel% neq 0 (
	cd ..
	py rerunner.py False
	pause
	exit)
py combining.py
if %errorlevel% neq 0 (
	pause
	exit)
cd ..
py rerunner.py False
if %errorlevel% neq 0 (
	pause
	exit)
py recode_finder.py
if %errorlevel% neq 0 (
	pause
	exit)
pause