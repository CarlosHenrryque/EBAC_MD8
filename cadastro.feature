#language: pt

Funcionalidade: Tela de cadastro checkout
Como cliente da EBAC-SHOP
Quero efetuar meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu acessar a tela de checkout da EBAC-SHOP

Cenário: cliente não cadastrado
Quando eu clicar em "Finalizar compra"
E não for cliente cadastrado
Então peça que informe os dados obrigatórios marcado com asteriscos

Cenário: e-mail com formato inválido
Quando eu clicar em "Finalizar compra"
E o campo do e-mail estiver com formato inválido
Então inserir mensagem de erro "e-mail com formato inválido"

Cenário: cadastro com campos vazios
Quando eu tentar finalizar o cadastro
E tiver com campos vazios
Então retorne a mensagem de alerta "Existem campos vazios a serem preenchidos"

Cenário: campos preenchidos corretamente
Quando eu clicar em "Finalizar compra"
E todos os campos estiverem preenchidos corretamente
Então efetue o cadastro e finalize a compra
