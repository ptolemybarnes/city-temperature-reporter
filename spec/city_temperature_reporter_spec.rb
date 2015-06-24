require './lib/city_temperature_reporter'

describe CityTemperatureReporter do

  it 'requests its current temperature' do
    weatherman = double :weatherman
    new_york   = CityTemperatureReporter.new('New York', weatherman)

    expect(weatherman).to receive(:get_temperature).with('New York')

    new_york.temperature
  end

  it 'reports its current temperature' do
    weatherman = double(:weatherman)
    allow(weatherman).to receive(:get_temperature).with('Seoul').and_return(29)
    seoul      = CityTemperatureReporter.new('Seoul', weatherman)

    expect(seoul.temperature).to eq 29
  end
end
