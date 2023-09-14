            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu esteja autenticado na plataforma EBAC SHOP

            Esquema do Cenário: Configuração de produto
            Quando visualizar o <produto> desejado
            E selecionar uma <cor>, <tamanho> e <quantidade> para ele
            Então o produto deverá ser inserido no carrinho

            Exemplos:
            | produto    | cor        | tamanho | quantidade |
            | "Regata"   | "Amarela"  | "P"     | 5          |
            | "Camiseta" | "Vermelha" | "M"     | 10         |
            | "Bermuda"  | "Azul"     | "G"     | 14         |
            | "Moletom"  | "Preto"    | "GG"    | 20         |
            | "Casaco"   | "Verde"    | "XGG"   | 35         |

            Cenário: Quantidade de 10 produtos por venda
            Quando visualizar o produto desejado
            E selecionar uma quantidade maior que 10 do mesmo produto para o carrinho
            Então o sistema retornará com a mensagem "Apenas 10 produtos para venda poderão ser inseridos no carrinho"

            Cenário: Limpar seleção
            Quando selecionar cor, tamanho ou quantidade para o produto desejado
            E apertar no botão "limpar"
            Então a configuração do produto deverá retornar para o estado original





