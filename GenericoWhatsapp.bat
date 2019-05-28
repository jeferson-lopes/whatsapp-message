@echo off

set status=%1 
set numero=%2
set dia=%Date:~0,2%
set mes=%Date:~3,2%
set ano=%Date:~6,6%
set hora=%TIME:~0,2%
set minuto=%TIME:~3,2%

REM ABRINDO O GOOGLE CHROME E MANIPULANDO PARA A JANELA FICAR "QUASE" INVISIVEL 
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --app="data:text/html,<html><body><script>window.moveTo(0,0);window.resizeTo(0,0);window.location='https://www.forblink.com/index.php?phone=%numero%&text=%dia%%%2F%mes%%%2F%ano%%%20Backup%%20%status%com%%20Sucesso%%20%%E2%%9C%%85';</script></body></html>"
echo Iniciou o envio da mensagem para: %numero% com o status do backup: %status%... 
timeout /t 20 

REM FINALIZANDO JANELAS DO GOOGLE CHROME QUE TENHAM COMO TITULO WHATSAPP (1)WHATSAPP (2)WHATSAPP (3)WHATSAPP (4)WHATSAPP (5)WHATSAPP
taskkill /IM chrome.exe /FI "WINDOWTITLE eq WhatsApp*
taskkill /IM chrome.exe /FI "WINDOWTITLE eq (1) WhatsApp*
taskkill /IM chrome.exe /FI "WINDOWTITLE eq (2) WhatsApp*
taskkill /IM chrome.exe /FI "WINDOWTITLE eq (3) WhatsApp*
taskkill /IM chrome.exe /FI "WINDOWTITLE eq (3) WhatsApp*
taskkill /IM chrome.exe /FI "WINDOWTITLE eq (5) WhatsApp*
exit