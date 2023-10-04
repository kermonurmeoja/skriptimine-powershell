# Skript väljastab, kui rakendus "Notepad" on avatud teksti "Notepad is running"
# Koodi kasutamiseks ava 3 Notepad'i, käivita kood ning sulge need ükshaaval.

while(Get-Process Notepad -ErrorAction SilentlyContinue)
{
    Write-Host "Notepad is running"
}