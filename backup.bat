echo off
cls

diskpart.exe /s C:\Users\Administrator\scripts\disable_readonly.txt


pause

set dia_hoje=%date:~0,2%_%date:~3,2%_%date:~6,9%

set backup=backup_%dia_hoje%


md E:\backup_diario\%backup% 


robocopy.exe C:\K2\ E:\backup_diario\%backup%\K2 /e

robocopy.exe C:\RH\ E:\backup_diario\%backup%\RH /e

robocopy.exe F:\teste_pasta E:\backup_diario\%backup%\teste_pasta /e

diskpart.exe /s C:\Users\Administrator\scripts\enable_readonly.txt

pause


