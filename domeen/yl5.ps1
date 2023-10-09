# Skript loob AD kasutaja, küsides kasutajalt ees- ja perekonnanime. Lisaks genereeritakse suvaline parool ning see salvestatakse kasutajanimi.csv faili.

# Impordime tööriista, mis võimaldab genereerida turvalisi paroole.
Add-Type -AssemblyName System.Web

# Siin saab lisada muutujad, et ei peaks koodis sees muutma.
$OU = "OU=SV-KOOL,DC=sv-kool,DC=local" # määrame, kuhu kasutajad luuakse

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


# Kontrollime, kas kasutaja on juba olemas
$kontroll = Get-ADUser -Filter {SamAccountName -eq $kasutajanimi} -ErrorAction SilentlyContinue
if($kontroll) {
    Write-Host "Kasutaja $kasutajanimi loomine ebaõnnestus. Veateade : Kasutaja on juba olemas." -ForegroundColor Red
} else {
    Write-Host "Loon AD kasutaja :" $kasutajanimi

    # Loome parooli
    $parool = ([System.Web.Security.Membership]::GeneratePassword(8,2)) 

    # Loome kasutaja
    New-ADUser -Name $taisnimi -Displayname $taisnimi -GivenName $eesnimi -Surname $perenimi -SamAccountName $kasutajanimi -UserPrincipalName "$kasutajanimi@sv-kool.local" -Description "$taisnimi | user" -Path $OU -ChangePasswordAtLogon $True -Company "SV-Kool" -Title "Opilane" -AccountPassword (ConvertTo-SecureString $parool -AsPlainText -Force) -Enabled $True -ErrorAction SilentlyContinue

    # Kontrollime, kas kasutaja loodi edukalt
    if ($?) {
        Write-Host "Kasutaja loodi edukalt :" $kasutajanimi -ForegroundColor Green

        # Loome kasutajanimi.csv faili, mis sisaldab kasutajanime ja parooli.
        "kasutajatunnus,parool" | Out-File -FilePath "$kasutajanimi.csv" -Encoding utf8 -Force
        "$kasutajanimi,$parool" | Out-File -FilePath "$kasutajanimi.csv" -Append -Encoding utf8
        Write-Host "Loodi fail $kasutajanimi.csv, kus on loodud kasutaja kasutajatunnus ja parool."
    } else {
        Write-Host "Kasutaja $kasutajanimi loomine ebaõnnestus. Veateade : $Error[0]"
    }
}