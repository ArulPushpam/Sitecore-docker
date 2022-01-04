ARG MSSQL_IMAGE
ARG MSSQL_INIT_IMAGE
FROM ${MSSQL_INIT_IMAGE} as init
FROM ${MSSQL_IMAGE}
COPY --from=init /modules /modules
RUN C:\DeployDatabases.ps1 -ResourcesDirectory C:\modules\sps
RUN C:\DeployDatabases.ps1 -ResourcesDirectory C:\modules\spe
RUN C:\DeployDatabases.ps1 -ResourcesDirectory C:\modules\sxa
RUN C:\DeployDatabases.ps1 -ResourcesDirectory C:\modules\horizon
RUN Remove-Item -Path C:\modules -Recurse -Force