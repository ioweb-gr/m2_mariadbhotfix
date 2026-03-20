@echo off
set REPO_ROOT=%~dp0
set MAP_DIR=%REPO_ROOT%..\m2_mariadbhotfix-map\app\code\Ioweb\MariaDbHotfix

if not exist "%REPO_ROOT%..\m2_mariadbhotfix-map\app\code\Ioweb" (
    mkdir "%REPO_ROOT%..\m2_mariadbhotfix-map\app\code\Ioweb"
)

mklink /J "%MAP_DIR%" "%REPO_ROOT%"
echo Junction created: %MAP_DIR% -^> %REPO_ROOT%
pause
