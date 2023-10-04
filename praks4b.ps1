# Skript väljastab küsimuse, kasutaja langetab valiku ja vastavalt valikule väljastatakse tekst.

# Küsimuse väljastamine
Write-Host "Vali riik :" -ForegroundColor Yellow
Write-Host "1 : India" -ForegroundColor Cyan
Write-Host "2 : Austraalia" -ForegroundColor Cyan
Write-Host "3 : Hiina " -ForegroundColor Cyan

# Loome sisendi muutuja ning küsime sisendit.
$riik = Read-Host "Vali riik (sisesta number)"

# Kui kasutaja valis "1"
if ($riik -eq "1")
{
 Write-Host "India pealinn on New Delhi" -ForegroundColor Green
}
# Kui kasutaja valis "2"
elseif ($riik -eq "2")
{
 Write-Host "Austraalia pealinn on Canberra" -ForegroundColor Green
}
# Kui kasutaja valis "3"
elseif ($riik -eq "3")
{
 Write-Host "Hiina pealinn on Beijing" -ForegroundColor Green
}
# Kui kasutaja sisestas midagi muud.
else
{
 Write-Host "Ebakorrektne sisend." -ForegroundColor Red
}