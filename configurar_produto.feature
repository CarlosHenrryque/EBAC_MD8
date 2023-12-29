#language: pt

Funcionalidade: configurar produto
Como cliente do EBAC-SHOP
Quero configurar meu produto de acordo com meu tamnanho e gosto
Para depois inserir no carrinho

Contexto:
Dado que eu acesse o EBAC-SHOP

Cenário: produto adicionado ao carrinho
Quando o <tamanho> do produto for selecionado
E a <cor>
Então permita que o produto seja adicionado ao carrinho de compras

Cenário: Tamanho não selecionado
Quando o <tamanho> do produto não for selecionado
E a <cor> selecionada
Então não permita que o produto seja adicionado ao carrinho de compras

Cenário: Cor não selecionada
Quando o <tamanho> do produto for selecionado
E a <cor> não for selecionada
Então não permita que o produto seja adicionado ao carrinho de compras

Cenário: Cor e Tamanho não selecionados
Quando o <tamanho> do produto não for selecionado
E a <cor> não for selecionada
Então não permita que o produto seja adicionado ao carrinho de compras

Contexto:
Dado que eu acesse o EBAC-SHOP e selecione a cor e tamanho do produto

Cenário: Permitir adicionar produto
Quando seleciona entre >= 1 produto
E <= 10 produtos
Então permita adicionar produtos ao corrinho

Cenário: Quantidade de produtos não permitida
Quando seleciona 0 produto
E mais de 10 produtos
Então não permita adicionar produtos ao corrinho e enviar mensagem de alerta "Quantidade de produtos não permitida"

Contexto:
Dado que eu acesse o EBAC-SHOP e selecione a cor, tamanho e quantidade válidas de produto

Cenário: Limpar seleção de produto
Quando eu selecionar a cor, tamanho e quantidade do produto
E eu clicar no botão "limpar"
Então deve limpar a seleção da cor, tamanho e quantidade do produto