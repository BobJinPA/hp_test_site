Given(/^I am logged onto the site$/) do
  visit(HomePage).log_on_with 'tutorial', 'tutorial'
end

Then(/^I can select a flight from (.*)$/) do  |city|
  on(FlightFinder).verify_flight_options city
end

Then(/^'(.*)' displays for flight '(.*)'$/) do  |cost, flight|
  on(HomePage).verify_specials(flight, cost)
end

Given(/^I am on the home page$/) do
  visit(HomePage)
end