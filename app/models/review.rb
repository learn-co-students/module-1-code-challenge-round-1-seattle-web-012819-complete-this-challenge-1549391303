class Review
  attr_reader :restaurant, :customer, :rating, :content
  @@all = []

  def initialize(restaurant, customer, rating, content)
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end
