class Review
  @@all = []
  attr_reader :customer, :restaurant, :rating
  attr_accessor :content
  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def rating=(rating)
    self.rating = (rating < 1 ) ? 1 : (rating > 5) ? 5 : rating
  end
end

