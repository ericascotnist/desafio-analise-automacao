Before do
  puts 'Aqui executa antes!'
  @home_page = Pages::HomePage.new
  @search_page = Pages::SearchPage.new
  @login_page = Pages::LoginPage.new
  @cart_modal_page = Pages::CartModalPage.new
end

AfterStep do
  screenshot = "reports/screenshot#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'the_screenshot')
end