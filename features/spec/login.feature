# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente cadastrado no site FakeEcommerce
  Gostaria de poder logar no site
  Para acessar minha conta

  Contexto:
    Dado que esteja na página de login

  # Completar o cenário abaixo
  @login_com_sucesso
  Cenário: Realizar login
  Quando inserir as credenciais "0hamza.and@homitay.com" e "senha"
  Então as opções da conta devem aparecer na tela

  # Completar o cenário abaixo
  @login_com_falha
  Esquema do Cenario: Login com falha
  Quando inserir as credenciais <email> e <senha>
  Então o alerta <mensagem> deve ser exibido

    Exemplos:
    |email                      |senha              |mensagem                    |
    |""                         |"passwd"           |"An email address required" |
    |"email@"                   |"passwd"           |"Invalid email address"     |
    |"0hamza.and@homitay.com"   |""                 |"Password is required"      |
    |"0hamza.and@homitay.com"   |"senha_incorreta"  |"Authentication failed"     |
