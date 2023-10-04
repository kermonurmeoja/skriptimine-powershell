# Kalkulaator.

# Küsime kaks numbrit sisendiks.
[int]$first = Read-Host "Sisesta esimene number "
[int]$second = Read-Host "Sisesta teine number: "

# Väljastame selgituse, kuidas kalkulaatorit kasutada
Write-Host "Kalkulaator" -ForegroundColor Yellow
Write-Host "1: Liitmine" -ForegroundColor Yellow
Write-Host "2: Lahutamine" -ForegroundColor Yellow
Write-Host "3: Jagamine" -ForegroundColor Yellow
Write-Host "4: Korrutamine" -ForegroundColor Yellow

# Küsime valikut.
$choise = Read-Host "Sisesta number"

switch($choise)
{
    1
        {
            $i = $first + $second
            Write-Host "Summa on:" $i
        }
    2
        {
            $i = $first - $second
            Write-Host "Summa on:" $i
        }
    3
        {
            $i = $first / $second
            Write-Host "Summa on:" $i
        }
    4
        {
            $i = $first * $second
            Write-Host "Summa on:" $i
        }
}