# Skriptis kasutatakse funktsiooni, et vaadata, mitu staatust on olekus "Running" ja mitu "Stopped"

function countservice
{
    param
     (
      [string]$status
     )
    
    if ($status -eq "Running")
    {
        $running = Get-Service | Where-Object {$_.Status -eq "running"}
        Write-Host "Running services:" $running.Count
    }
    elseif($status -eq "Stopped")
    {
        $stopped = Get-Service | Where-Object {$_.Status -eq "stopped"}
        Write-Host "Stopped services:" $stopped.Count
    }
    else
    {
        Write-Host "Error" -ForegroundColor Red
    }
    
}

countservice -status Running
countservice -status Stopped
