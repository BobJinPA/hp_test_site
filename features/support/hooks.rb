require 'watir-webdriver'

Before do
  #@browser = Watir::Browser.new :firefox
  caps = Selenium::WebDriver::Remote::Capabilities.firefox
  caps.version = "11"
  caps.platform = :LINUX
  caps[:name] = "testing this cloud thing"
  @browser = Watir::Browser.new(
      :remote,
      :url => "http://BobJInPA:e3ae55ee-a6ed-4617-871a-91cd6d4219d2@ondemand.saucelabs.com:80/wd/hub",
      :desired_capabilities => caps)
end

After do |scenario|
  if scenario.failed?
    filename = "error-#{@current_page.class}-#{Time.now}.png"
    @current_page.save_screenshot(filename)
    embed(filename, 'image/png')
  end
  @browser.close
end