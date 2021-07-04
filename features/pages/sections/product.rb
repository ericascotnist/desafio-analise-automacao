module Sections
  class Product < SitePrism::Section
    element  :image, '.img-responsive'
    element  :name, '.product-name'
    element  :price, '.product-price'
    element  :btn_add_cart, '[title=\'Add to cart\']'
  end
end
