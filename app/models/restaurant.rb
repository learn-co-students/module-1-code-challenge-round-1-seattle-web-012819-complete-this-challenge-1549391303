class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end

  def self.find_by_name(name)
    self.all.find do |r|
      r.name == name
    end
  end

  def customers
    self.reviews.collect do |review|
      review.customer
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    count = 0
    review_sum = []  
    self.reviews.each do |review|
      count += review.rating
      review_sum << review.rating
    end
    review_sum.length / count
  end

  def longest_review
    content_array = []
    self.reviews.each do |review|
      content_array << review.content 
      binding.pry
    end
    content_array.split("")
  end

end #end of class



# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews
# Restaurant#longest_review
# returns the longest review content for a given restaurant