@chcp 65001 
@echo off

set /a adicao=2+2
set /a subtracao=2-2
set /a multiplicacao=2*2
set /a divisao=2/2
set /a modulo=2%2

rem o /a diz que estamos trabalhando com numeros

echo calculo  simples:

echo 2+2= %adicao%
echo 2-2= %subtracao%
echo 2*2= %multiplicacao%
echo 2/2= %divisao%
echo 2%%2= %modulo%

rem pra exibir o porcento tem que colocar %% pois s� um � lido como caracter especial

rem CALCULO COMPOSTO

set /a x=(2+2)*(3+3)

rem o par�nteses � chamado no bat de operador de agrupamento, assim resolver� sempre primeiro o que est� entre par�nteses

echo o resultado e %x%

rem --------------------------------------------------------------------------------------

rem USAR MULTIPLAS VARIAVEIS NUMERICAS:

set /a x1=2+2, x2=3*3, x3=x1+x2

echo resultados:

echo %x1%
echo %x2%
echo %x3%

rem ---------------------------------------------------------------------------------------------

rem OPERADORES DE ATRIBUI��O

rem se eu tiver a variavel x=2 e quiser somar o valor dela mesma, ou seja x=%x%+2 e uso operador de atribui��o. S�o eles

rem atribui��o =
rem som +=
rem subtra��o -=
rem multiplica��o *=
rem divis�o /=
rem modulo %=

rem com isso a opera��o do exemplo ficaria

set /a x+=2

pause> nul