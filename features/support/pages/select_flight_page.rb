class SelectFlight
  include PageObject

  page_url("http://newtours.demoaut.com/mercuryreservation2.php")

  button(:select_flights_button, :name => 'reserveFlights')

  def select_departure (flight)

  end

  def select_return(flight)

  end

  def select_flight
     self.select_flights_button
  end

end