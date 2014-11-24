class JaredWeather
  class CLI < Thor
    desc 'version', "shows version"
    def version
      puts "JaredWeather version #{JaredWeather::VERSION}"
    end

    desc 'forecast [place or zipcode]', "Gets the forecast."
    def forecast(place_or_zipcode)
      JaredWeather.new(place_or_zipcode).forecast
    end

    desc 'today [place or zipcode]', "Gets todays forecast."
    def today(place_or_zipcode)
      JaredWeather.new(place_or_zipcode).today
    end

    desc 'tomorrow [place or zipcode]', "gets tomorrows forecast."
    def tomorrow(place_or_zipcode)
      JaredWeather.new(place_or_zipcode).tomorrow
    end
  end
end
