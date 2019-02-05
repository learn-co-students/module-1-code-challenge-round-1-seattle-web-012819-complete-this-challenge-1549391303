class Review

  @@all = []

  attr_reader :customer, :restaurant, :rating, :content

  def initialize(restaurant: nil, customer: nil, rating: 1, content: "")
    @customer = customer
    @rating = [[rating,1].max,5].min
    @content = content
    @restaurant = restaurant

    @@all << self
  end

  def self.all
    @@all
  end

end
