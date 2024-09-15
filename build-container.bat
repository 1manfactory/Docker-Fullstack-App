@echo off
docker info >nul 2>&1
if %ERRORLEVEL% neq 0 (
	echo -e "\e[31mDocker Desktop is not running. Please start Docker Desktop.\e[0m"
    echo Press any key to exit...
    pause >nul
    exit /b 1
) else (
    echo Docker Desktop is running. Proceeding with the build...
	docker build -t my-fullstack-app .
	echo Finished
    echo Press any key to exit...
    pause >nul	
)
