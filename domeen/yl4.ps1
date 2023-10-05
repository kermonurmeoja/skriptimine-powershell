# Skript kustutab AD kasutaja, küsides kasutajalt ees- ja perekonnanime.

# Tsüklis küsitakse ees- ja perekonnanime, luuakse see vormi eesnimi.perekonnanimi ja kontrollitakse, kas on sisestatud ladina sümbolites

do 
{
    $eesnimi = Read-Host "Sisesta eesnimi "
    $perenimi = Read-Host "Sisesta perekonnanimi "
    $taisnimi = "$eesnimi $perenimi".ToLower()
    # lisaks muudame täpitähed tavatähtedeks
    $kasutajanimi = "$eesnimi.$perenimi".ToLower() -replace 'ä', 'a' -replace 'ö', 'o' -replace 'ü', 'u' -replace 'õ', 'o'
}until($kasutajanimi -match "^[a-z\.\-]+$")

Write-Host "Kustutan kasutaja :" $kasutajanimi

# Kontrollime, kas kasutaja eksisteerib
Try { Get-ADUser $kasutajanimi }
    Catch { 
        write-host "Kasutajat $kasutajanimi ei leitud."
        break 
    }

# Kustutame kasutaja.
Remove-ADUser -Identity $kasutajanimi -Confirm:$False -Verbose -ErrorAction SilentlyContinue

# Kontrollime, kas kasutaja kustutati edukalt
if ($?) {
    Write-Host "Kasutaja kustutati edukalt :" $kasutajanimi -ForegroundColor Green
} else {
    Write-Host "Kasutaja $kasutajanimi kustutamine ebaõnnestus. Veateade : $Error[0]"
}