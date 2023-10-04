# Skript küsib kaht numbrit ning väljastab, kumb arv on suurem.

# Küsime sisendi.
$value1 = Read-Host "Sisesta esimene number "
$value2 = Read-Host "Sisesta teine number "

# Kui esimene väärtus on suurem kui teine
if ($value1 -gt $value2)
{
 Write-Host "Suurem number on :"$value1 -ForegroundColor Green
}
# Kui teise väärtus on suurem kui esimese.
else
{
 Write-Host "Suurem number on :"$value2 -ForegroundColor Green
}