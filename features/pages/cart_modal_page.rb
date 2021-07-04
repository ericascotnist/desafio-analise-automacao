module Pages
  class CartModalPage < SitePrism::Page
    set_url '/index.php'

    element :product_inserted_message, '.layer_cart_product h2'
    element :quantity_cart, '.ajax_cart_quantity'
    
  end

end
