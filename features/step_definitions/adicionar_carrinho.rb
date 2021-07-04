Então("o produto é adicionado ao carrinho") do
    expect(@cart_modal_page.product_inserted_message).to have_content 'Product successfully added to your shopping cart'
    expect(@cart_modal_page.quantity_cart.text).to eq '1'
  end