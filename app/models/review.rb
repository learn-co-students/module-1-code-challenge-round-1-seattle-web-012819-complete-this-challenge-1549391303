class Review

  #can read customer but cannot change
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  @@all = []

  def initialize(customer,restaurant,rating,content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    #expect to require an intger 1-5 for rating
    @content = content

    @@all << self
  end



  #returns all of the reviews - check
  def self.all
    @@all
  end



end
