@echo off

rem aqui a gente usa o set /p para pegar dados digitados

set  /p "nome=Digite seu nome> "

rem as variáveis são chamadas entre %% e no comando abaixo a gente imprime através do echo na tela
rem e onde houve a letra "e" ela será substituída por "x"

echo %nome:e=x%

rem por fim a gente direciona o comando pause para nulo para a tela do cmd ficar aberta e a gente poder ver o 
rem resultado na tela

pause >nul