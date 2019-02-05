class Review
  
  attr_reader :restaurant, :customer, :rating, :content
  @@all = []

  # Review.new(Restaurant: instance, content: String, Customer: instance, rating (1 - 5): Integer)
  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content

    # catch out of bounds ratings
    if rating > 5
      rating = 5
    elsif rating < 1
      rating = 1
    end

    @rating = rating

    @@all << self
  end

  # returns list of all Review instances
  # Review.all -> [Review: instances]
  def self.all
    @@all
  end

end

