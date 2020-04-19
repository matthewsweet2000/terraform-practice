@echo off

REM run build for heat report 1
cd ..\..\heat\report_1\scripts\
CALL docker-build.bat

REM run build for heat report 2
cd ..\..\heat\report_2\scripts\
CALL docker-build.bat

REM run build for heat report 3
cd ..\..\heat\report_3\scripts\
CALL docker-build.bat

REM run build for niac report 1
cd ..\..\niac\report_1\scripts\
CALL docker-build.bat

REM run build for niac report 2
cd ..\..\niac\report_2\scripts\
CALL docker-build.bat

REM run build for niac report 3
cd ..\..\niac\report_3\scripts\
CALL docker-build.bat

REM change back to docker scripts dir
cd ..\..\..\docker\scripts