Feature: As a customer who eats cheese
  I want to book a flight

 @not_ready
Scenario: simple flight
  Given I am logged onto the site
  Then I can select a flight from New York

 @not_ready
Scenario: simple flight
  Given I am logged onto the site
  Then I can select a flight from McConnellsburg

@not_ready
Scenario: advertised values display
  Given I am on the home page
  Then '$100' displays for flight 'Atlanta to Las Vegas'



@not_ready
Scenario: book a flight for two passengers

@not_ready
Scenario: book a round trip ticket

@not_ready
Scenario: book a flight for a specific airline

@not_ready
Scenario: verify the total price is correct
  Given I am logged onto the site
  When I select a departing flight and capture the price
  And I select a returning flight and capture the price
  And I complete the reservation
  Then I should see the correct total price on the booking page

