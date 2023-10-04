# The 3rd array should show the sum of each corresponding value in array 1 and 2.
$Array1 = @(1, 2, 3)
$Array2 = @(4, 5, 6)

$esimene = $Array1[0] + $Array2[0]
$teine = $Array1[1] + $Array2[1] 
$kolmas = $Array1[2] + $Array2[2]

$Array3 = @("$esimene", "$teine", "$kolmas")

$Array3