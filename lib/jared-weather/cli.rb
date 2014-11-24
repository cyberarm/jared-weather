class JaredWeather
  class CLI < Thor
    desc 'version', "shows version"
    def version
      puts "JaredWeather version #{JaredWeather::VERSION}"
    end

    desc 'forecast', "eh."
    def forecast(place_or_zipcode)
      JaredWeather.new(place_or_zipcode).forecast
    end

    desc 'today', "eh."
    def today(place_or_zipcode)
      JaredWeather.new(place_or_zipcode).today
    end

    desc 'tomorrow', "eh."
    def tomorrow(place_or_zipcode)
      JaredWeather.new(place_or_zipcode).tomorrow
    end
  end
end
