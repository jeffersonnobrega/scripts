@echo off

rem a variável hora vai receber a variável de sistema %time%

set hora=%time%

echo %hora%

rem Pode notar que na execução acima vai mostrar hora, minutos e segundos
rem agora quero apenas a hora e os minutos:

echo %hora:~0,5%

rem funciona da seguinte forma o ~vai realizar a extração e a hora ou qualquer variável tem um número de caracteres, então é só colocar quais quer retirar
rem exemplo da contagem de caracteres na hora:
rem 12:04:56,33
rem 012345678910
rem nesse caso quero apenas os números de 0 a 5 que correspondem as horas e minutos

echo %hora:~5% 
rem a partri do 5 eu pego todos

echo %hora:~-2%
rem eu pego somente os dois últimos

pause >nul