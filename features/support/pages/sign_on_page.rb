class SignOn
  include PageObject

  #page_url('http://newtours.demoaut.com/mercurysignon.php')
  page_url "#{FigNewton.base_url}/mercurysignon.php"

  text_field(:user_name, :name => 'userName')
  text_field(:password, :name => 'password')
  button(:login_button, :name => 'login')

  def log_on_with (user, password)
    self.user_name = user
    self.password = password
    self.login_button
  end
end