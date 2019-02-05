class Review
  attr_reader :customer, :restaurant, :rating, :content
  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @rating = rating # integer of 1-5
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  
end # end of class
