[CmdletBinding()]
param (
)

function Assert-Command([string] $Command) {
    if ((Get-Command $command -ErrorAction SilentlyContinue) -eq $null) {
        return "failed"
    }
    return "success"
}

Write-Host -NoNewline "Ensure IIS is stopped..."
if ((Get-Service w3svc | Where-Object {$_.Status -eq "Running"} | Measure-Object).Count -eq 0) {
    Write-Host "success"
}
else {
    Write-Host "stopping"
    & net stop w3svc | Out-Null
    Write-Host "IIS stopped"
}


Write-Host -NoNewline "Checking for Azure CLI..."
Write-Host $(Assert-Command -Command az)

Write-Host -NoNewline "Checking for .NET Core Runtime..."
Write-Host $(Assert-Command -Command dotnet)

Write-Host -NoNewline "Checking for docker-compose..."
Write-Host $(Assert-Command -Command docker-compose)



