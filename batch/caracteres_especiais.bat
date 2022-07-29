@echo off
title Caracteres especiais
cd database
color 0a
mode 57,35
:MENU
title Caracteres especiais\Menu
cls
echo.
type menu.txt
echo.
echo 1.Registrar caractere
echo 2.Ver caractere
echo 3.Remover caractere
echo 4.Sair
echo.
set esc=0
set /p esc=Escolher:
echo.
 if %esc% equ 0 goto MENU
 if %esc% equ 1 goto REGISTRAR
 if %esc% equ 2 goto VER
 if %esc% equ 3 goto REMOVER
 if %esc% equ 4 goto SAIR
goto MENU

:SAIR
title Caracteres especiais\Menu\Sair
cls
echo.
set sair=0
set /p sair=Vocˆ tem certeza que deseja sair?(s/n):
if %sair% equ 0 goto SAIR
if %sair% equ S exit -s
if %sair% equ s exit -s
if %sair% equ N goto MENU
if %sair% equ n goto MENU
echo.
echo Comando inv lido! Digite a tecla "S" ou a tecla "s" para "Sim" e a tecla "N" ou a tecla "n" para "NÆo".
pause>nul
goto SAIR

:REGISTRAR
title Caracteres especiais\Menu\Registrar
cls
 if not exist voltar.txt cd ..
echo.
type voltar.txt
echo.
echo.
echo Que tipo de caractere vocˆ deseja registrar?
echo.
echo 1.Caractere min£sculo
echo 2.Caractere mai£sculo
echo 3.Caractere indiferente
echo.
set esc=0
set /p esc=Escolher:
 if %esc% equ 0 goto REGISTRAR
 if %esc% equ 1 cd caracteres_minusculos&&set caractere=caracteres_minusculos&&goto REGISTRAR2
 if %esc% equ 2 cd caracteres_maiusculos&&set caractere=caracteres_maiusculos&&goto REGISTRAR2
 if %esc% equ 3 cd caracteres_indiferentes&&set caractere=caracteres_indiferentes&&goto REGISTRAR2
 if %esc% equ VOLTAR goto MENU
 if %esc% equ voltar goto MENU
goto REGISTRAR

:REGISTRAR2
title Caracteres especiais\Menu\Registrar\%caractere%
cls
 if not exist voltar.txt cd ..
 if %caractere% equ caracteres_indiferentes (
echo.
echo  [ascii]:Ver Tabela ASCII
)
echo.
type voltar.txt
echo.
echo.
cd %caractere%
set reg=t
 if %caractere% equ caracteres_indiferentes (
set /p reg=Registrar caractere^(use a tabela ASCII^):
)
 if not %caractere% equ caracteres_indiferentes (
set /p reg=Registrar caractere:
)
 if %reg% equ t goto REGISTRAR2
 if %reg% equ ascii cd ..&&start Tabela_ASCII.txt&&goto REGISTRAR2
 if %reg% equ ASCII cd ..&&start Tabela_ASCII.txt&&goto REGISTRAR2
 if %reg% equ VOLTAR goto REGISTRAR
 if %reg% equ voltar goto REGISTRAR
 if exist %reg% (
echo.
echo J  existe este caractere! Vocˆ pode ver o print deste
echo caractere digitando ele em "Ver caractere". Para fazer
echo isso ‚ simples: volte para o menu, digite a tecla "2" e
echo pressione a tecla ENTER.
pause>nul
goto REGISTRAR2
)
echo %reg%>%reg%
goto REGISTRAR2

:VER
title Caracteres especiais\Menu\Ver
cls
 if not exist voltar.txt cd ..
echo.
type voltar.txt
echo.
echo.
echo Que tipo de caractere vocˆ deseja ver?
echo.
echo 1.Caractere min£sculo
echo 2.Caractere mai£sculo
echo 3.Caractere indiferente
echo.
set esc=0
set /p esc=Escolher:
 if %esc% equ 0 goto VER
 if %esc% equ 1 cd caracteres_minusculos&&set caractere=caracteres_minusculos&&set caractere2=min£sculos&&goto VER2
 if %esc% equ 2 cd caracteres_maiusculos&&set caractere=caracteres_maiusculos&&set caractere2=mai£sculos&&goto VER2
 if %esc% equ 3 cd caracteres_indiferentes&&set caractere=caracteres_indiferentes&&set caractere2=indiferentes&&goto VER2
 if %esc% equ VOLTAR goto MENU
 if %esc% equ voltar goto MENU
goto VER

:VER2
title Caracteres especiais\Menu\Ver\%caractere%
 if exist voltar.txt cd %caractere%
cls
echo.
echo Lista de caracteres %caractere2%:
echo.
echo -------------------------------------------------------
dir /B
echo -------------------------------------------------------
 if not exist voltar.txt cd ..
 if %caractere% equ caracteres_indiferentes (
echo.
echo  [ascii]:Ver Tabela ASCII
)
echo.
type voltar.txt
echo.
echo.
cd %caractere%
set ver=0
 if %caractere% equ caracteres_indiferentes (
set /p ver=Ver caractere^(use a tabela ASCII^):
)
 if not %caractere% equ caracteres_indiferentes (
set /p ver=Ver caractere:
)
 if %ver% equ 0 goto VER2
 if %ver% equ ascii cd ..&&start Tabela_ASCII.txt&&goto VER2
 if %ver% equ ASCII cd ..&&start Tabela_ASCII.txt&&goto VER2
 if %ver% equ VOLTAR goto VER
 if %ver% equ voltar goto VER
 if not exist %ver% (
echo.
echo Este caractere ainda nÆo foi registrado, volte ao menu e
echo digite "1" para escolher a op‡Æo "Registrar caractere".
pause>nul
goto VER2
)
ren %ver% %ver%.txt
start %ver%.txt
pause>nul
ren %ver%.txt %ver%
goto VER2

:REMOVER
title Caracteres especiais\Menu\Remover
cls
 if not exist voltar.txt cd ..
echo.
type voltar.txt
echo.
echo.
echo Que tipo de caractere vocˆ deseja remover?
echo.
echo 1.Caractere min£sculo
echo 2.Caractere mai£sculo
echo 3.Caractere indiferente
echo.
set esc=0
set /p esc=Escolher:
 if %esc% equ 0 goto REMOVER
 if %esc% equ 1 cd caracteres_minusculos&&set caractere=caracteres_minusculos&&set caractere2=min£sculos&&goto REMOVER2
 if %esc% equ 2 cd caracteres_maiusculos&&set caractere=caracteres_maiusculos&&set caractere2=mai£sculos&&goto REMOVER2
 if %esc% equ 3 cd caracteres_indiferentes&&set caractere=caracteres_indiferentes&&set caractere2=indiferentes&&goto REMOVER2
 if %esc% equ VOLTAR goto MENU
 if %esc% equ voltar goto MENU
goto REMOVER

:REMOVER2
title Caracteres especiais\Menu\Remover\%caractere%
 if exist voltar.txt cd %caractere%
cls
echo.
echo Lista de caracteres %caractere2%:
echo.
echo -------------------------------------------------------
dir /B
echo -------------------------------------------------------
 if not exist voltar.txt cd ..
 if %caractere% equ caracteres_indiferentes (
echo.
echo  [ascii]:Ver Tabela ASCII
)
echo.
type voltar.txt
echo.
echo.
cd %caractere%
set remover=0
 if %caractere% equ caracteres_indiferentes (
set /p remover=Remover caractere^(use a tabela ASCII^):
)
 if not %caractere% equ caracteres_indiferentes (
set /p remover=Remover caractere:
)
 if %remover% equ VOLTAR goto REMOVER
 if %remover% equ voltar goto REMOVER
 if %remover% equ ascii cd ..&&start Tabela_ASCII.txt&&goto REMOVER2
 if %remover% equ ASCII cd ..&&start Tabela_ASCII.txt&&goto REMOVER2
 if %remover% equ 0 goto REMOVER2
 if not exist %remover% (
echo.
echo Caractere inexistente! Digite um caractere que esteja na
echo lista de caracteres.
pause>nul
goto REMOVER2
)

:REMOVER2_conf
set conf=0
echo.
set /p conf=Vocˆ tem certeza que deseja remover este caractere?(s/n):
 if %conf% equ 0 goto REMOVER2_conf
 if %conf% equ S del %remover%&&goto REMOVER2
 if %conf% equ s del %remover%&&goto REMOVER2
 if %conf% equ N goto REMOVER2
 if %conf% equ n goto REMOVER2
goto REMOVER2