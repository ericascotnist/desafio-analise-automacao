# language: pt

Funcionalidade: Inserção de produto no carrinho
  Como um cliente acessando o site FakeEcommerce
  Gostaria de inserir um produto no carrinho
  Para prosseguir com a compra

  Contexto:
    Dado que esteja na página inicial

  @adicionar_no_carrinho
  Cenário: Adicionar item ao carrinho
    Quando buscar pelo produto 'shirt'
    E seleciono o primeiro item
    Então o produto é adicionado ao carrinho