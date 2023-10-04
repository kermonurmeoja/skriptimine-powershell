# Skript kustutab lokaalse kasutaja, küsides kasutajalt ees- ja perekonnanime.

# Tsüklis küsitakse ees- ja perekonnanime, luuakse kasutajanimi eesnimi.perekonnanimi ja kontrollitakse, kas on sisestatud ladina sümbolites
do 
{
    $eesnimi = Read-Host "Sisesta eesnimi "
    $perenimi = Read-Host "Sisesta perekonnanimi "
    $taisnimi = "$eesnimi $perenimi".ToLower()
    $kasutajanimi = "$eesnimi.$perenimi".ToLower()
}until($kasutajanimi -match "^[a-z\.\-]+$")

Write-Host "Kustutan kasutaja :" $kasutajanimi

# Kustutame kasutaja.
Remove-LocalUser -Name $kasutajanimi -Verbose

# Kontrollime, kas kasutaja kustutati edukalt
if ($?) {
    Write-Host "Kasutaja kustutati edukalt :" $kasutajanimi -ForegroundColor Green
} else {
    Write-Host "Kasutaja $kasutajanimi kustutamine ebaõnnestus. Veateade : $Error[0]"
}