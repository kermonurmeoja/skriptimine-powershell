# Skript laeb CSV failist andmed, vaatab tabelis olevaid andmeid ning võrdleb, millega vanus ära asendada. Luuakse uus tabel uute andmetega.

# Loome tühja tabeli, et andmeid salvestada
$result = @()
# Impordime CSV faili sisse
$andmed = Import-Csv C:\Users\Administrator\Downloads\powershell\praks6csv.csv

# Teisendame andmed üle
foreach($i in $andmed)
{
 #Kui vanus on [4;10], siis on "Junior"
 if([int]$i.Age -ge 4 -and [int]$i.Age -le 10)
 {
    $school = "Junior"
 }
 #Kui vanus on [11;17], siis on "Senior"
 elseif([int]$i.Age -ge 11 -and [int]$i.Age -le 17)
 {
    $school = "Senior"
 }
 #Muu korral "No information".
 else
 {
    $school = "No information"
 }
 $info = [PSCustomObject]@{
    Name = $i.Name
    School = $school
 }
 $result += $info
}

# Kuvame andmed.
$result