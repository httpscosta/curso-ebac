#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu estou na pagina de configurar produto

Cenário: Produto adicionado no carrinho
Quando eu escolho a cor 
E tamhanho 
E quantidade do produto
E clico no botão "comprar"
Então deve adicionar produto ao meu carrinho

Cenário: Carrinho com maximo de itens adicionado
Quando eu escolho a quantidade máxima de dez itens
E clico no botão "comprar"
Então deve adicionar produto ao meu carrinho

Cenário: Carinho sem produtos
Quando eu escolho uma cor
E escolho quantidade de itens
E escolho tamanho
E clico no botão "Limpar"
Então deve remover os intens configurados


Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de login da EBAC

Cenário: Login válido
Quando eu digitar usuário "teste@ebac.com.br"
E senha "senha@123"
E clicco no botão "Login"
Então deve ser exibida tela de checkout

Cenário: Login inválido
Quando eu digitar usuário "teste@ebac.com.br"
E senha "senha@ble"
E clicco no botão "Login"
Então deve ser exibida a mensagem “Usuário ou senha inválidos”


Funcionalidade: Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que estou na página de checkout

Cenário: Checkout com campos obrigatórios preenchidos
Quando eu preencho todos os campos obrigatórios
E clico no botão "finalizar compra"
Então deve ser exibido a mensagem "Compra concluída com sucesso"

Cenário: Checkout com e-mail inválido
Quando eu preencho o campo e-mail com "teste@ble"
E clico para no botão "finalizar compra"
Então deve ser exibido a mensagem "Formato de e-mail inválido"

Cenário: Checkout com campos vazios
Quando não preencho nenhum campo
E clico no botão "finalizar compra"
Então deve ser exibido a mensagem "Preencha os campos para finalizar compra"
