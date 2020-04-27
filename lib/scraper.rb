class CNYWeatherScraper::CNYWeatherScraper

#https://www.accuweather.com/en/us/rome/13440/weather-forecast/334623

base_url = "https://www.accuweather.com/en/us/rome/13440/weather-forecast/334623?day="

def self.scrape_today
    doc = Nokogiri::HTML(open("https://www.accuweather.com/en/us/rome/13440/daily-weather-forecast/334623?day=1"))
      name = doc.search(".day panel .module header").text
      high = doc.search().text
      low = doc.search().text
      description = doc.search().text
      tonight = doc.search().text
      CNYWeatherConfirmation::Forecast.new(name, high, low, description, tonight)
end 

def self.scrape_tomorrow
    doc = Nokogiri::HTML(open("https://www.accuweather.com/en/us/rome/13440/daily-weather-forecast/334623?day=2"))
    name = doc.search().text
    high = doc.search().text
    low = doc.search().text
    description = doc.search().text
    tonight = doc.search().text
    CNYWeatherConfirmation::Forecast.new(name, high, low, description, tonight)
end

def self.scrape_day_after
    doc = Nokogiri::HTML(open("https://www.accuweather.com/en/us/rome/13440/daily-weather-forecast/334623?day=3"))
    name = doc.search().text
    high = doc.search().text
    low = doc.search().text
    description = doc.search().text
    tonight = doc.search().text
    CNYWeatherConfirmation::Forecast.new(name, high, low, description, tonight)
end

