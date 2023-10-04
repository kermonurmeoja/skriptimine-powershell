# Skript väljastab, kui rakendus "Notepad" on avatud teksti "Notepad is running" ja seda "do while" tsükliga.
# Koodi kasutamiseks ava 3 Notepad'i, käivita kood ning sulge need ükshaaval.
$i = 0

do
{
    # Leiame rakenduse
    $rakendus = Get-Process | ?{$_.name -like "notepad"}

    # Kontrollime, kas rakendus on avatud
    if ($rakendus -ne $null)
    {
        Write-Host "Notepad is running"
        $i += 1
        $j = 2
        Start-Sleep -Seconds 1
    }
    # Kui rakendus pole avatud, siis
    else
    {
      $j = 1     
    }}while($j -ne 1)

# Väljastame, mitu korda teksti kuvati
$i
