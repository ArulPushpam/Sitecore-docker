[CmdletBinding()]
param (
)

& dotnet sitecore index schema-populate
& dotnet sitecore index rebuild