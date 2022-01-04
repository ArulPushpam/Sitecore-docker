[CmdletBinding()]
param (
)

# check if mkcert exists
Write-Host "Checking if mkcert has already been downloaded..."
if (-not (Test-Path (Join-Path -Path $PSScriptRoot -ChildPath "..\utilities\mkcert.exe"))) {
    Write-Host "mkcert not found, downloading..."
    Invoke-WebRequest -Uri "https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-windows-amd64.exe" -OutFile "..\utilities\mkcert.exe"
}

Write-Host "Installing root certs..."
& (Join-Path -Path $PSScriptRoot -ChildPath ..\utilities\mkcert.exe) -install

Write-Host "Create certs for local site..."
& (Join-Path -Path $PSScriptRoot -ChildPath ..\utilities\mkcert.exe) --cert-file $(Join-Path $PSScriptRoot -ChildPath ..\..\traefik\certs\cert.pem) --key-file $(Join-Path $PSScriptRoot -ChildPath ..\..\traefik\certs\key.pem) "hackathon.localhost" "*.hackathon.localhost"