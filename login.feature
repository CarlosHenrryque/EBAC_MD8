            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do site da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "carlos@shopebac.com"
            E a senha "Carlos@123!"
            Então devo ser direcionado para a tela de checkout

            Cenário: Autenticação inválida
            Quando eu digitar o usuário "carlosjadki@shopebac.com"
            E a senha "Carlos@123!"
            Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Autenticação inválida
            Quando eu digitar o usuário "carlos@shopebac.com"
            E a senha "Carloskajsnd23!"
            Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Autenticação inválida
            Quando eu digitar o usuário "carlasdaos@shopebac.com"
            E a senha "Carloskajsnd23!"
            Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então devo ser direcionado para a tela de checkout

            Exemplos:
            | usuario                | senha          | autenticação            |
            | "carlos@shopebac.com"  | "Carlos@123!"  | Direcionado ao checkout |
            | "mariana@shopebac.com" | "mari@123!"    | Direcionado ao checkout |
            | "jose@shopebac.com"    | "jose@123!"    | Direcionado ao checkout |
            | "Carol@shopebac.com"   | "Carol@123!"   | Direcionado ao checkout |
            | "Vera@shopebac.com"    | "vera@123!"    | Direcionado ao checkout |
            | "gabriel@shopebac.com" | "Gabriel@123!" | Direcionado ao checkout |