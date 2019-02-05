class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # returns list of all Restaurant instances
  # Restaurant.all -> [Restaurant: instances]
  def self.all
    @@all
  end

  # given Restaurant name as String, return first matching Restaurant
  # Restaurant.find_by_name(String) -> Restaurant: instance
  def self.find_by_name(name)
    restaurants = self.all.select do |restaurant|
      restaurant.name == name
    end
    restaurants.first
  end
  
  # returns array of all reviews of Restaurant instance
  # #reviews -> [Review: instances]
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  # returns unique list of customers who have reviewed Restaurant instance
  # #customers -> [Customer: instances]
  def customers
    list_of_customers = self.reviews.map do |review|
      review.customer
    end
    list_of_customers.uniq
  end

  # returns average rating of Restaurant instance
  # #average_star_rating -> Float
  def average_star_rating
    reviews = self.reviews
    num_of_reviews = reviews.count
    review_total = reviews.reduce(0) { |sum, review| sum += review.rating }
    review_total / num_of_reviews.to_f
  end

  # returns longest Review content of Restaurant instance
  # #longest_review -> String
  def longest_review
    self.reviews.max_by do |review|
      review.content.length
    end
  end

end
