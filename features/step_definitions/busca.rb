Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Então("a mensagem {string} deve ser exibida na tela de resultados") do |string|
  expect(@search_page.message_bar).to have_content string
end

Quando("seleciono o primeiro item") do
  @search_page.select_first_item
end

Então("o produto é adicionado ao carrinho") do
  expect(@cart_modal_page.product_inserted_message).to have_content 'Product successfully added to your shopping cart'
  expect(@cart_modal_page.quantity_cart.text).to eq '1'
end
