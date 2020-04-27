class CNYWeatherConfirmation::CLI 

    def menu
        puts " "
        puts "Thank you for using CNY Weather Confirmation!"
        current
        scrap_data
        day
    end

    def scrape_data
      CNYWeatherConfirmation::Scraper.scrape_today
    end

    def current
      @current_temp ||= CNYWeatherConfirmation::Scraper.current_scraper
        puts " The current temperature is #{current_temp.slice(start, length)}"
        puts ""
    end 

    def day
      puts ""
      puts "Please choose if you want the forecast for 'today', 'tomorrow', or the 'day after'. Otherwise, please type 'exit' to leave."
      puts ""
      input = gets.strip.downcase

      case input
      when "today"
        today_weather
        day
      when "tomorrow"
        tomorrow_weather
        day
      when "day after"
        future_weather
        day
      when "exit"
        exit
      else
        day 
      end
    end

    def today_weather

    end 

    def tomorrow_weather

    end

    def future_weather

    end 

    def exit
     puts ""
     puts "Thank you for checking on the CNY Weather Confirmation. Goodbye!"
     puts ""
    end

end
