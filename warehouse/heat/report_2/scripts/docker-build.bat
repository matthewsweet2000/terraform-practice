FOR /F %%A in (..\..\..\.env) do SET %%A

SET IMAGE_NAME=heat_report_2

SET DOCKER_TAG=%AWS_ACCOUNT_HEAT%.dkr.ecr.%AWS_REGION_HEAT%.amazonaws.com/%IMAGE_NAME%

docker build -t %DOCKER_TAG% ..\..\.. --file ..\..\..\docker\%IMAGE_NAME%.dockerFile