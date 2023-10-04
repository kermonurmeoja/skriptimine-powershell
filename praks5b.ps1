# Kuvab kõik failid kaustas ning kuvab CSV faili ja näitab size'i KB/MB

# Kuvab kõik failid kaustas
ls C:\Temp\Test


# Selekteerime .csv faili ning pärime nime ja faili suuruse
$file = Get-Item C:\Temp\Test\*.csv
$filename = $file.Name
$sizeKB = $file.Length/1kb
$sizeMB = $file.Length/1mb

# Väljastame andmed
Write-Host "File Name:" $filename
Write-Host "Size in KB:" $sizeKB
Write-Host "Size in MB:" $sizeMB