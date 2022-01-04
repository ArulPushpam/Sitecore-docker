[CmdletBinding()]
param (
)

Push-Location (Join-Path -Path $PSScriptRoot -ChildPath ..\..\)
& docker-compose up -d
Pop-Location