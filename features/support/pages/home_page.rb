class HomePage
  include PageObject

  page_url('http://newtours.demoaut.com')

  text_field(:user_name, :name => 'userName')
  text_field(:password, :name => 'password')
  button(:login_button, :name => 'login')



  def log_on_with (user, password)
    self.user_name = user
    self.password = password
    self.login_button
  end

  def verify_specials(flight, cost)

  end
end