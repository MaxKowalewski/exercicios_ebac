#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: Dado que eu esteja autenticado na plataforma EBAC SHOP

Cenário: Seleção de cor para o produto
Quando visualizar o produto desejado
E selecionar uma cor para ele
Então o produto deverá ser inserido no carrinho

Cenario: Seleção de tamanho para o produto
Quando visualizar o produto desejado
E selecionar o tamanho ideal
Então o produto deverá ser inserido no carrinho

Cenario: Seleção de quantidade para o produto
Quando visualizar o produto desejado
E selecionar a quantidade devida
Então o produto deverá ser inserido no carrinho

Cenário: Quantidade de 10 produtos por venda
Quando visualizar o <produto> desejado
E selecionar uma <quantidade> maior que 10 do mesmo produto para o carrinho 
Então o sistema retornará com a mensagem "Apenas 10 produtos para venda poderão ser inseridos no carrinho"

Exemplo:
|produto| |quantidade|
"celular"   "10"
"fogão"     "3"   
"notebook"  "9"
"tênis"     "2"
"camiseta"  "5"

Cenario: Limpar seleção
Dado que eu esteja autenticado na plataforma EBAC SHOP
E visualizar o produto desejado
Quando selecionar uma cor, tamanho ou quantidade para ele
E apertar no botão "limpar"
Então a configuração do produto deverá retornar para o estado original
