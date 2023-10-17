# skriptimine-powershell
Aine haldustegevuste automatiseerimine tunniülesanded PowerShellis.

## Lokaalne masin (Powershell skriptid)
* [__yl1.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/lokaalne-masin/yl1.ps1) – Skript loob lokaalse kasutaja, küsides kasutajalt ees- ja perekonnanime. Kasutajanime formaat on "eesnimi.perekonnanimi", täisnimi on kujul "Eesnimi Perekonnanimi". Parooliks määratakse "Parool1!".
* [__yl2.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/lokaalne-masin/yl2.ps1) – Skript kustutab lokaalse kasutaja, küsides kasutajalt ees- ja perekonnanime.

## Domeen (Powershell skriptid)
* [__yl3.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/domeen/yl3.ps1) – Skript loob AD kasutaja, küsides kasutajalt ees- ja perekonnanime. Kasutajanime formaat on "eesnimi.perekonnanimi", täisnimi on kujul "Eesnimi Perekonnanimi". Parooliks määratakse "Parool1!". Parool tuleb esimest korda sisselogides muuta.
* [__yl4.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/domeen/yl4.ps1) – Skript kustutab AD kasutaja, küsides kasutajalt ees- ja perekonnanime.
* [__yl5.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/domeen/yl5.ps1) – Skript loob AD kasutaja, küsides kasutajalt ees- ja perekonnanime. Kasutajanime formaat on "eesnimi.perekonnanimi", täisnimi on kujul "Eesnimi Perekonnanimi". Genereeritakse suvaline parool ning see salvestatakse kasutajanimi.csv faili. Parool tuleb esimest korda sisselogides muuta.
* [__yl6.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/domeen/yl6.ps1) – Skript varundab arvutis eksisteerivate kasutajate kodukataloogid kausta C:\Backup.
* [__yl7.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/domeen/yl7.ps1) – Skript lähtestab AD kasutaja parooli, määrab uueks parooliks "Parool1!" ning nõuab uue parooliga sisselogimisel uut parooli.

## Põhipraktikumid (Powershell skriptid)
* [__praks1.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks1.ps1) – Skript liidab kahe array sisu kokku ning loob vastavalt tulemusele kolmanda array. 
* [__praks2.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks2.ps1) – Skript väljastab vastavalt kahele hashtable'ile kolmanda hashtable'i.
* [__praks3.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks3.ps1) – Skript küsib kasutajalt sisendit ning väljastab selle.
* [__praks4a.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks4a.ps1) – Skript küsib kaht numbrit ning väljastab, kumb arv on suurem.
* [__praks4b.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks4b.ps1) – Skript väljastab küsimuse, kasutaja langetab valiku ning vastavalt valikule väljastatakse tekst (if-elseif-else).
* [__praks5a.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks5a.ps1) – Skript väljastab avatud rakenduse Notepad Process ID.
* [__praks5b.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks5b.ps1) – Skript kuvab kõik failid C:\Temp\Test kaustas ning näitab sealolevat CSV faili ning selle suurust KB/MB.
* [__praks6.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks6.ps1) – Skript laeb CSV failist andmed, vaatab tabelis olevaid andmeid ning võrdleb, millega vanus ära asendada. Luuakse uus tabel uute andmetega. (foreach)
* [__praks7.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks7.ps1) – Skript kasutab "for" loopi, et genereerida arvud 1-20 ning neile loositakse suvaliselt juurde värv. 
* [__praks8.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks8.ps1) – Skript väljastab, kui rakendus Notepad on avatud, teksti "Notepad is running". Testimiseks ava Notepad.
* [__praks9.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks9.ps1) – Skript väljastab, kui rakendus Notepad on avatud, teksti "Notepad is running" ja seda "do while" tsükliga.
* [__praks10.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks10.ps1) – Skript väljastab, kui rakendus Notepad on avatud, teksti "Notepad is running" ja seda "do until" tsükliga.
* [__praks11.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks11.ps1) – Kalkulaator. (switch)
* [__praks12a.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks12a.ps1) – Skriptis kasutatakse funktsioone, et vaadata, mitu service'it on olekus "Running" ja mitu "Stopped". (ilma muutujata)
* [__praks12b.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks12b.ps1) – Skript kasutatakse funktsioone, et vaadata, mitu service'it on olekus "Running" ja mitu "Stopped". (koos muutujaga)
* [__praks13.ps1__](https://github.com/kermonurmeoja/skriptimine-powershell/blob/main/praks13.ps1) – Pindala-kalkulaator menüüga.
