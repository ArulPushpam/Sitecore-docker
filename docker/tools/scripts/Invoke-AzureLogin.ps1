[CmdletBinding()]
param (
)

& az login --output none
& az acr login -n hexagonmarketing