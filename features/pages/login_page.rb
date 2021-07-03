module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, '.breadcrumb'
    element  :input_create_account_email, '#email_create'
    element  :btn_create_an_account, '#SubmitCreate'
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, '.lost_password > a'
    element  :btn_sign_in, '#SubmitLogin'
    element  :alert_message_authentication_failed, '.alert-danger > ol > li'

    def insert_credentials(email, password)
      input_login_email.set(email)
      input_login_password.set(password)
      btn_sign_in.click
    end

  end

end