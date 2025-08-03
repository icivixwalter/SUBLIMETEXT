$inputPath = "$env:APPDATA\Sublime Text\Packages\User\Package Control.sublime-settings"
$outputPath = "$PSScriptRoot\sublime_installed_packages.txt"

Write-Host ""
Write-Host "Pacchetti installati Sublime Text:"
Write-Host "---------------------------------------"

try {
    $json = Get-Content -Raw $inputPath | ConvertFrom-Json

    if ($json.installed_packages) {
        $json.installed_packages | Tee-Object -FilePath $outputPath | ForEach-Object {
            Write-Host "- $_"
        }
    } else {
        Write-Host "Nessun pacchetto installato trovato."
    }
}
catch {
    Write-Host "Errore nella lettura del file JSON:"
    Write-Host $_.Exception.Message
}

Write-Host "---------------------------------------"
Write-Host "Elenco salvato in: $outputPath"
Write-Host ""

Start-Sleep -Seconds 15
