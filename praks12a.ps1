# Skriptis kasutatakse funktsiooni, et vaadata, mitu staatust on olekus "Running" ja mitu "Stopped"

function countstart
{
    $running = Get-Service | Where-Object {$_.Status -eq "running"}
    Write-Host "Running services:" $running.Count
}

function countstop
{
    $stopped = Get-Service | Where-Object {$_.Status -eq "stopped"}
    Write-Host "Stopped services:" $stopped.Count
}

countstart
countstop