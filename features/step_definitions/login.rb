Dado("que esteja na página de login") do
    @login_page.load
end

Quando("inserir as credenciais {string} e {string}") do |email, password|
    @login_page.insert_credentials(email,password)
end
  
Então("as opções da conta devem aparecer na tela") do
    expect(@login_page.breadcrumb).to have_content "My account"
end

Então("o alerta {string} deve ser exibido") do |message|
    expect(@login_page.alert_message_authentication_failed).to have_content message
end
  
  