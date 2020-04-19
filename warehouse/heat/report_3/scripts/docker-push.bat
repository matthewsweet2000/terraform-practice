@ECHO off

FOR /F %%A in (..\..\..\.env) do SET %%A

SET IMAGE_NAME=heat_report_3

SET DOCKER_TAG=%AWS_ACCOUNT_HEAT%.dkr.ecr.%AWS_REGION_HEAT%.amazonaws.com/%IMAGE_NAME%

aws-mfa

FOR /f "tokens=*" %%i in ('aws ecr get-login --no-include-email') DO SET LOGIN_CMD=%%i

%LOGIN_CMD%

docker push %DOCKER_TAG%