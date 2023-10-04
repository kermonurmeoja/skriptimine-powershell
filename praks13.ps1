# Pindala-kalkulaator menüüga.


function mainmenu
{
    cls
    Write-Host "`t`tArea Calculator" -ForegroundColor Green
    Write-Host "`n`t`tMain menu" -ForegroundColor Yellow
    Write-Host "`nPlease select the option to perform the respective task" -ForegroundColor Yellow
    Write-Host "`n1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit" -ForegroundColor Green

    $choise = Read-Host "`nEnter your choise"
    return $choise
}

function footer
{
    Write-Host "`n`nPlease select the next option" -ForegroundColor Yellow
    Write-Host "`n1: Return to Main Menu" -ForegroundColor Green
    Write-Host "2: Exit" -ForegroundColor Green
    $choise = Read-Host "`nEnter your choise"
    if ($choise -eq "2")
    {
        exit
    }
    elseif ($choise -eq "1")
    {
        continue
    }
    else
    {
        Write-Host "`nEnter correct number!" -ForegroundColor Red
        footer
    }
}

function square
{
    cls
    Write-Host "`t`tArea of Square" -ForegroundColor Green
    [int]$a = Read-Host "`nEnter the side of the square"
    $area = $a * $a
    Write-Host "`nArea of the square :" $area -ForegroundColor Green
}

function rectangle
{
    cls
    Write-Host "`t`tArea of Rectangle" -ForegroundColor Green
    [int]$a = Read-Host "`nEnter the length of the rectangle"
    [int]$b = Read-Host "`nEnter the breadth of the rectangle"
    $area = $a * $b
    Write-Host "`nArea of the rectangle :" $area -ForegroundColor Green
}

function circle
{
    cls
    Write-Host "`t`tArea of Circle" -ForegroundColor Green
    [int]$a = Read-Host "`nEnter the radius of the circle"
    $area = 3.14*$a*$a
    Write-Host "`nArea of the circle :" $area -ForegroundColor Green
}

function triangle
{
    cls
    Write-Host "`t`tArea of Triangle" -ForegroundColor Green
    [int]$a = Read-Host "`nEnter the height of the triangle"
    [int]$b = Read-Host "`nEnter the base of the triangle"
    $area = 0.5*$a*$b
    Write-Host "`nArea of the triangle :" $area -ForegroundColor Green
}

do
{
    $choise = mainmenu

    switch($choise)
    {
     1
      {
        square
        footer
      }
     2
      {
        rectangle
        footer
      }
     3
      {
        circle
        footer
      }
     4
      {
        triangle
        footer
      }
    
    
    }
}while($choise -ne "5")