[CmdletBinding()]
param (
)

& dotnet tool restore
& dotnet sitecore login --authority https://id.hexagon.localhost --cm https://cm.hexagon.localhost --allow-write true