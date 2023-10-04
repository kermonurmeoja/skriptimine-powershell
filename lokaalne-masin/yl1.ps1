# Skript loob lokaalse kasutaja, küsides kasutajalt ees- ja perekonnanime.

# Tsüklis küsitakse ees- ja perekonnanime, luuakse kasutajanimi eesnimi.perekonnanimi ja kontrollitakse, kas on sisestatud ladina sümbolites
do 
{
    $eesnimi = Read-Host "Sisesta eesnimi "
    $perenimi = Read-Host "Sisesta perekonnanimi "
    $taisnimi = "$eesnimi $perenimi".ToLower()
    $kasutajanimi = "$eesnimi.$perenimi".ToLower()
}until($kasutajanimi -match "^[a-z\.\-]+$")

Write-Host "Loon kasutaja :" $kasutajanimi

# Loome algse parooli Parool1!
$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

# Loome kasutaja.
New-LocalUser "$kasutajanimi" -Password $parool -FullName "$taisnimi" -Description "$taisnimi | user" -ErrorAction SilentlyContinue

# Kontrollime, kas kasutaja loodi edukalt
if ($?) {
    Write-Host "Kasutaja loodi edukalt :" $kasutajanimi -ForegroundColor Green
} else {
    Write-Host "Kasutaja $kasutajanimi loomine ebaõnnestus. Veateade : $Error[0]"
}
