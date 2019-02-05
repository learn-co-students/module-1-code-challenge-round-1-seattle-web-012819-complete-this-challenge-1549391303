class Review

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  @@all = []

  ## my earlier methods broke once I added rating and content to the argument. hmmmmm
  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @rating = rand(1..5)
    @content = content


    @@all << self
  end

  def self.all
    @@all
  end








end
