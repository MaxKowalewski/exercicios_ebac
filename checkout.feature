            #language: pt

            Funcionalidade: Finalizar Cadastro para checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de cadastro da EBAC-SHOP

            Esquema do Cenário: Preenchimento de Dados obrigatórios
            Quando visualizar os <Dados Obrigatorios>
            E o preencher com <Dados Validos>
            Então o sistema irá redirecionar para a tela de checkout

            Exemplo:
            | Dados Obrigatorios | Dados Validos          |
            | "Nome"             | "Mauricio"             |
            | "Sobrenome"        | "Kowalewski"           |
            | "País"             | "Brasil"               |
            | "Endereço"         | "Dom João Pedro,320"   |
            | "Cidade"           | "Porto Alegre"         |
            | "CEP"              | 92200-450              |
            | "Telefone"         | 51981031020            |
            | "E-mail"           | "mauricio@ebac.com.br" |

            Cenário: Cadastro com os dados vazios
            Quando visualizar os Dados Obrigatorios
            E deixar os campos sem preencher
            Então o sistema irá retornar com uma mensagem "Atenção! Preencha os dados obrigatórios"

            Cenário: Preenchimento de e-mail inválido
            Quando digitar o endereço de e-mail "qxxzzxx@ebac.com.br"
            Então o sistema deve retornar com a mensagem "E-mail inválido"




