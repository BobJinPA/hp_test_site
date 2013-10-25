class FlightFinder
  include PageObject

  page_url("http://newtours.demoaut.com/mercuryreservation.php")

  radio_button(:round_trip_radio, :name => 'tripType', :value => 'roundtrip')
  select_list(:number_of_passengers, :name => 'passCount')
  select_list(:from_location, :name => 'fromPort')
  select_list(:from_month, :name => 'fromMonth')
  select_list(:from_day, :name => 'fromDay')
  select_list(:to_location, :name => 'toPort')
  select_list(:to_month, :name => 'toMonth')
  select_list(:to_day, :name => 'toDay')
  radio_button(:class_radio, :name => "servClass", :value => 'Coach')
  select_list(:select_airline, :name => 'airline')
  button(:search_for_flights, :name => 'findFlights')


  def search_for_flight

  end

  def verify_flight_options (city)
    #puts self.from_location_options.class
    fail unless self.from_location_options.include? city
  end

end