#  Whatsapp-Send
Processo automatizado para envio de mensagens para o WhatsApp usando JavaScript, Batch, TamperMonkey, ForbLink e Whatsapp Web.

## Descrição

O processo automatizado foi criado para minha necessidade que era enviar uma mensagem para meu WhatsApp após a conclusão de um backup. Mas todo o processo pode ser alterado de acordo com a necessidade do usuário.

Adicionei uma etapa no meu processo de backup que cria um arquivo .log no inicio do processo e no termino ambos com nomes diferente e informando a situação. A próxima etapa era verificar o nome do .log e enviar a mensagem baseada no .log.

Criei um script em batch (**ServidorWhatsapp.bat**) que fica executando continuamente verificando se no diretório especificado será gerando um arquivo .log. Quando esse arquivo for criando o batch (**ServidorWhatsapp.bat**) irá iniciar o outro batch (**GenericoWhatsapp.bat**)  passando os parametros **status** e **numero**.

O batch (**GenericoWhatsapp.bat**)  irá iniciar o Google Chrome manipulando-o para abrir com a janela minuscula e entrar em um site de envio de mensagem via o **Web Whatsapp** já com a mensagem que é pré moldada pelo batch.

Para enviar a mensagem usamos um função com time no Javascript para simular um click no botão send.

## JavaScript

Para executar o comando em JavaScript instale o Google Chrome ou Firefox e a extensão Tampermonkey.

- Para simular o click no send do WhatsappWeb crie um Novo Userscript no tampermonkey no @match coloque: `*://*/*`   e na função cole esse codigo.
`setTimeout(function(){ document.querySelectorAll('span[data-icon="send"]')[0].click(); }, 5000);`



## Batch

All your files are listed in the file explorer. You can switch from one to another by clicking a file in the list.

## Importante

 - Só funciona se o WhatsApp Web estiver conectado com seu celular.
 -  O bat não reconhece só uma porcentagem para a url codificar é necessário usar duas, exemplo: espaço codificado: **%20** para o cmd reconhecer **%%20**
## Links
 - Api de envio de mensagem WebWhatsapp: [https://www.forblink.com/](https://www.forblink.com/)
 - Entender as codificações da url: [https://cryptii.com/pipes/urlencode](https://cryptii.com/pipes/urlencode)

