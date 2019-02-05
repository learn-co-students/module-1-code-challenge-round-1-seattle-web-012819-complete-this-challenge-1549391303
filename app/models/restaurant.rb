class Restaurant
  attr_accessor :name
  
  @@all_restaurants = []

  def initialize(name)
    @name = name

    @@all_restaurants << self
  end

  def self.all
    @@all_restaurants
  end

  def self.find_by_name(name)
    Restaurant.all.find { |rest| rest.name == name }
  end

end
