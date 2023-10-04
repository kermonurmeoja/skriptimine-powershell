# Skript kasutab for loopi, et genereerida arvud 1-20, neile loositakse suvaliselt juurde värv.

# Loome tühja tabeli, et andmeid salvestada
$result = @()

# Genereerime 1-20 numbrit
for($i = 1 ; $i -le 20 ; $i++)
{
    # Loosime suvalise värvi
    $color = Get-Random @("Red","Green","Yellow","Blue")
    # Lisame andmed listi
    $info = [PSCustomObject]@{
        RollNumber = $i
        Group = $color
    }
 $result += $info
}

# Kuvame andmed
$result