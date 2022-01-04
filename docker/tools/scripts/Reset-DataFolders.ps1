[CmdletBinding()]
param (
)

Write-Host "Resetting data folders..."
Get-ChildItem (Join-Path -Path $PSScriptRoot -ChildPath ..\..\data\cm\logs) -Exclude '.gitkeep' -Recurse
Get-ChildItem (Join-Path -Path $PSScriptRoot -ChildPath ..\..\data\cm\coveo) -Exclude '.gitkeep', '*.example' -Recurse
Get-ChildItem (Join-Path -Path $PSScriptRoot -ChildPath ..\..\data\xconnect\logs) -Exclude '.gitkeep' -Recurse
Get-ChildItem (Join-Path -Path $PSScriptRoot -ChildPath ..\..\data\mssql) -Exclude '.gitkeep' -Recurse
Get-ChildItem (Join-Path -Path $PSScriptRoot -ChildPath ..\..\data\solr) -Exclude '.gitkeep' -Recurse
Get-ChildItem (Join-Path -Path $PSScriptRoot -ChildPath ..\..\deploy) -Exclude '.gitkeep' -Recurse
