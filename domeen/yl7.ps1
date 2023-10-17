# Skript lähtestab AD kasutaja parooli ning nõuab uue parooliga sisselogimisel uut parooli.

$parool = "Parool1!" # määrame lähtestavale kasutajatele parooli

# Tsüklis küsitakse ees- ja perekonnanime, luuakse kasutajanimi eesnimi.perekonnanimi ja kontrollitakse, kas on sisestatud ladina sümbolites
do 
{
    $eesnimi = Read-Host "Sisesta eesnimi "
    $perenimi = Read-Host "Sisesta perekonnanimi "

    # Teeme kenama formaadi.
    $eesnimi = $eesnimi.Substring(0, 1).ToUpper() + $eesnimi.Substring(1).ToLower()
    $perenimi = $perenimi.Substring(0, 1).ToUpper() + $perenimi.Substring(1).ToLower()
    $taisnimi = "$eesnimi $perenimi"

    # Lisaks muudame täpitähed tavatähtedeks
    $kasutajanimi = "$eesnimi.$perenimi".ToLower() -replace 'ä', 'a' -replace 'ö', 'o' -replace 'ü', 'u' -replace 'õ', 'o'
}until($kasutajanimi -match "^[a-z\.\-]+$")

# Kontrollime, kas kasutaja on olemas
$kontroll = Get-ADUser -Filter {SamAccountName -eq $kasutajanimi} -ErrorAction SilentlyContinue
if($kontroll) {
    Write-Host "Lähtestan parooli kasutajal :" $kasutajanimi

    # Lähtestame kasutaja parooli
    Set-ADAccountPassword -Identity $kasutajanimi -NewPassword (ConvertTo-SecureString $parool -AsPlainText -Force) -Reset -ErrorAction SilentlyContinue

    # Kontrollime, kas kasutaja parool lähtestati
    if ($?) {
        # Lisaks nõuame kasutajal parooli muutmise peale sisselogimist
        Set-ADUser -Identity $kasutajanimi -ChangePasswordAtLogon $true
        Write-Host "Kasutaja parool lähtestati edukalt :" $kasutajanimi -ForegroundColor Green
        Write-Host "Kasutaja parooliks määrati : Parool1!" -ForegroundColor Green 
    } else {
        Write-Host "Kasutaja $kasutajanimi parooli lähtestamine ebaõnnestus. Veateade : $Error[0]" -ForegroundColor Red
    }
} else {
   Write-Host "Kasutajat $kasutajanimi süsteemist ei leitud." -ForegroundColor Red
}