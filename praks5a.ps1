# Skript väljastab avatud rakenduse Notepad Process ID.
Get-Process | where{$_.ProcessName -eq "notepad"} | Select ProcessName,ID