[CmdletBinding()]
param (
)

Push-Location (Join-Path -Path $PSScriptRoot -ChildPath ..\..\)
& docker-compose pull
& docker-compose build --no-cache
Pop-Location