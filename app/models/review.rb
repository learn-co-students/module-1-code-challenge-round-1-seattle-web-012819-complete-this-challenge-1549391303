class Review
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  @@all_reviews = []

  def initialize(content, customer, restaurant, rating)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @rating = rating

    @@all_reviews << self
  end

  def self.all
    @@all_reviews
  end

end
