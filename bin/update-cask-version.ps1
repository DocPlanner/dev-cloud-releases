param(
    [Parameter(Mandatory=$true)]
    [string]$NewVersion,
    [Parameter(Mandatory=$true)]
    [string]$FilePath
)

$content = Get-Content -Path $FilePath -Raw
$newContent = $content -replace 'version "([0-9]+\.[0-9]+\.[0-9]+)"', "version `"$NewVersion`""
$newContent | Set-Content -Path $FilePath
