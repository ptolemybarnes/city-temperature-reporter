class CityTemperatureReporter
  attr_reader :city_name, :weatherman


  def initialize city_name, weatherman
    @city_name  = city_name
    @weatherman = weatherman
  end

  def temperature
    # make call to weatherman here
    weatherman.get_temperature city_name
  end


end
