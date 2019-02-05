class Review

  @@all = []

  attr_accessor :restaurant, :content, :rating
  attr_reader :customer

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

  def customer
    #returns the customer object for that given review
    #Once a review is created, I should not be able to change the author
    Review.all.customer
  end

  def restaurant
    #returns the restaurant object for that given review
    #Once a review is created, I should not be able to change the restaurant
    Review.all.restaurant
  end

  def rating
    #returns the star rating for a restaurant. This should be an integer from 1-5
    Review.all.rating
  end

  def content
    #returns the review content, as a string, for a particular review
    Review.all.content
  end
end
