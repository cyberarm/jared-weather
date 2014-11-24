class JaredWeather
  def initialize(place_or_zipcode)
    begin
      @weather = Weatherboy.new(place_or_zipcode)
    rescue => e
      puts "The error '#{e}', occurred fetching weather information."
      exit
    end
  end

  def weather
    @weather
  end

  def forecast
    weather.forecasts.each do |condition|
      puts "#{condition.title}."
      puts " #{condition.text}"
      notice
    end
  end

  def today
    condition = weather.forecasts[0]
    puts "#{condition.title}."
    puts " #{condition.text}"
    notice
  end

  def tomorrow
    condition = weather.forecasts[2]
    puts "#{condition.title}."
    puts " #{condition.text}"
    notice
  end

  def default
    forecast = weather.current
    puts forecast.temp_f + "Degrees Farenihight.", forecast.weather + ".", forecast.wind_mph + " mile per hour winds from the #{forecast.wind_dir}."
    notice
  end

  def notice
    puts
    puts "-- from Weather Underground - http://www.wunderground.com"
  end
end
