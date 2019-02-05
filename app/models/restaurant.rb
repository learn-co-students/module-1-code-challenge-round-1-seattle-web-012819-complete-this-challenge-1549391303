class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_by_name(name)
    self.all.find do |restaurant|
      name == restaurant.name
    end
  end
  def customers
    aggregate = []
    Review.all.collect do |review|
      review.restaurant == self
      aggregate << review
      end
      aggregate.uniq
  end

  def average_star_rating

    #add all of the 

  end
  def longest_review
    Review.all.select do |review|
      review.content

  end
  # go through every review, find the content and measure it's length, 
  # add the first items content length as the highest and compare each subsequent item's length to that one, 
  #if another items length is more it has the new longest string

  end
returns the longest review content for a given restaurant
end
