#language: pt

Funcionalidade: Realizar login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: Dado que acesse a página de autenticação da EBAC-SHOP 

Cenário: Dados válidos
Quando eu inserir o <usuario> "mauricio@ebac.com.br"
E a <senha> "123456" 
Então o usuario será redirecionado para a tela de checkout

Cenário: Usuário inválido
Quando eu inserir o <usuario> "xxxxxxxx@ebac.com.br"
E a <senha> "123456" 
Então será exibida uma mensagem de "Usuário inválido"

Cenário: Senha inválida
Quando eu inserir o <usuario> "mauricio@ebac.com.br"
E a <senha> "qqqq" 
Então será exibida uma mensagem de "Senha inválida"

