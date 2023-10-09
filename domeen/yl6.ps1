# Skript varundab arvutis eksisteerivate kasutajate kodukataloogid kausta C:\Backup. 

# Defineerime Backup kausta asukoha ning tuvastame kuupäeva
$kaust = "C:\Backup"
$aeg = Get-Date -Format "dd.MM.yyyy"

# Tuvastame kasutajad (nii domeenis kui ka lokaalsed)
$kasutajad = Get-LocalUser | Where-Object { $_.Enabled -eq $true }

foreach ($kasutaja in $kasutajad) {
    $kasutajanimi = $kasutaja.Name
    $kodukaust = "C:\Users\$kasutajanimi"
    $backupkaust = $kaust + "\" + "$kasutajanimi-$aeg.zip"
    
    # Kontrollime, kas antud arvutis eksisteerib kasutaja kodukaust
    # Kui eksisteerib
    if (Test-Path -Path $kodukaust -PathType Container) {
        Compress-Archive -Path $kodukaust -DestinationPath $backupkaust -Force
        Write-Host "Kasutaja $kasutajanimi kodukataloogi varundus õnnestus : $backupkaust" -ForegroundColor Green

    }
    # Kui ei eksisteeri
    else {
        Write-Host "Kasutaja $kasutajanimi kodukataloogi varundus ebaõnnestus : Selles arvutis ei eksisteeri $kasutajanimi kodukausta." -ForegroundColor Red
    }

}