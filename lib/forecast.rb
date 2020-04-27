class CNYWeatherConfirmation::Forecast
  attr_accessor :name, :high, :low, :description, :tonight

  @@all = [ ]

  def initialize(name, high, low, description, tonight)
    @name = name
    @high = high
    @low = low
    @description = description
    @tonight = tonight
    @@all << self
  end

  def self.all
    @@all
  end

  