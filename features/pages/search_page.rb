require_relative 'sections/product.rb'

module Pages
  class SearchPage < SitePrism::Page
    set_url '/index.php'

    sections :products, Sections::Product, '.product-container'
    element :message_bar, '.alert-warning'

    def select_first_item
      products.first.image.hover
      products.first.btn_add_cart.click
    end
    
  end

end
