@echo off
setlocal
set "CURRENT_DIR=%cd%"
docker volume create my_data_volume
docker run -d -p 8080:80 -p 3306:3306 -p 8025:8025 -p 1025:1025 -v "%CURRENT_DIR%/src:/var/www/html" -v my_data_volume:/var/lib/mysql my-fullstack-app
docker ps
echo Container started successfully with the volume my_data_volume mounted.
echo phpinfo: http://127.0.0.1:8080/
echo MailHog: http://127.0.0.1:8025/
echo Press any key to exit...
pause >nul	
