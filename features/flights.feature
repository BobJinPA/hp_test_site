Feature: As a customer
  I want to book a flight
Scenario: simple flight
  Given I am logged onto the site
  Then I can select a flight from New York

Scenario: advertised values display
  Given I am logged onto the site
  Then '$100' displays for flight 'Atlanta to Las Vegas'
