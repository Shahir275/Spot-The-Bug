@echo off
title JSP Spot The Bug - Build and Run

set "JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.20.101-hotspot"
set "MAVEN_HOME=C:\Users\shaik Taj Abjal\Downloads\apache-maven-3.9.16-bin\apache-maven-3.9.16"
set "TOMCAT_HOME=C:\Users\shaik Taj Abjal\Downloads\apache-tomcat-10.1.59-windows-x64\apache-tomcat-10.1.59"

set "PATH=%MAVEN_HOME%\bin;%JAVA_HOME%\bin;%PATH%"

cd /d "%~dp0"

echo Building project...
call "%MAVEN_HOME%\bin\mvn.cmd" clean package
if errorlevel 1 (
    echo BUILD FAILED
    pause
    exit /b 1
)

echo Stopping Tomcat...
call "%TOMCAT_HOME%\bin\shutdown.bat"
timeout /t 3 /nobreak >nul

echo Removing previous deployment...
if exist "%TOMCAT_HOME%\webapps\spot-the-bug-jsp" rmdir /s /q "%TOMCAT_HOME%\webapps\spot-the-bug-jsp"
if exist "%TOMCAT_HOME%\webapps\spot-the-bug-jsp.war" del /q "%TOMCAT_HOME%\webapps\spot-the-bug-jsp.war"

echo Copying WAR...
copy /y "%~dp0target\spot-the-bug-jsp.war" "%TOMCAT_HOME%\webapps\spot-the-bug-jsp.war"

echo Starting Tomcat...
call "%TOMCAT_HOME%\bin\startup.bat"
timeout /t 6 /nobreak >nul

start "" "http://localhost:8080/spot-the-bug-jsp/"

echo Done.
pause
