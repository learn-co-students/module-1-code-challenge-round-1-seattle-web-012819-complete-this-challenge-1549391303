class Review
  attr_accessor :content
  attr_reader :customer, :restaurant, :rating
  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    if rating > 5
      rating = 5
    elsif rating < 1
      rating = 1
    end
    @rating = rating
    @@all << self
  end


  def self.all
    @@all
  end
end
