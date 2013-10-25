Given(/^I am logged onto the site$/) do
  visit(HomePage).log_on_with 'tutorial', 'tutorial'
end

Then(/^I can select a flight from (.*)$/) do  |city|
  on(FlightFinder).verify_flight_options city
end
Then(/^'(.*)' displays for flight '(.*)'$/) do  |cost, flight|
  puts cost
  puts flight
end