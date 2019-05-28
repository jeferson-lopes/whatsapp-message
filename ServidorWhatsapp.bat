                                               
@echo off

set data=%date% - %time%

:func1 

echo Servico iniciado, aguardando log no diretorio: C:\Users\jeferson.lopes\Documents
cd C:\Users\jeferson.lopes\Documents REM CAMINHO QUE O SCRIPT FICARÁ AGUARDANDO PELO ARQUIVO DE LOG


IF EXIST "backupIniciado.log" ( REM VERIFICANDO SE O ARQUIVO EXISTE PARA EXECUTAR O BAT GENERICO PASSANDO OS PARAMETROS QUE SAO O STATUS E O NUMERO
echo backupIniciado %data%
start /wait C:\Users\jeferson.lopes\Desktop\GenericoWhatsapp.bat Iniciado 55119SEUNUMERO REM INICIANDO O BAT PASSANDO OS PARAMETROS QUE SAO O STATUS E O NUMERO
DEL /q C:\Users\jeferson.lopes\Documents\backupIniciado.log REM DELETANDO ARQUIVO DE LOG
) 



IF EXIST "backupFinalizado.log" ( REM VERIFICANDO SE O ARQUIVO EXISTE PARA EXECUTAR O BAT GENERICO PASSANDO OS PARAMETROS QUE SAO O STATUS E O NUMERO
echo backupFinalizado %data%
start /wait C:\Users\jeferson.lopes\Desktop\GenericoWhatsapp.bat Finalizado 55119SEUNUMERO REM INICIANDO O BAT PASSANDO OS PARAMETROS QUE SAO O STATUS E O NUMERO
DEL /q C:\Users\jeferson.lopes\Documents\backupFinalizado.log REM DELETANDO ARQUIVO DE LOG
)

timeout 10 > NUL


GOTO :func1
