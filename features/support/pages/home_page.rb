class HomePage
  include PageObject

  #page_url('http://newtours.demoaut.com')
  page_url FigNewton.base_url

  text_field(:user_name, :name => 'userName')
  text_field(:password, :name => 'password')
  button(:login_button, :name => 'login')
  table(:specials_table, :id=> 1)


  def log_on_with (user, password)
    self.user_name = user
    self.password = password
    self.login_button
  end

  def verify_specials(flight, cost)
    self.specials_table
  end
end