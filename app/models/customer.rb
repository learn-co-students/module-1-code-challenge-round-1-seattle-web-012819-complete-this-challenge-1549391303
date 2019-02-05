class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # returns list of all Customer instances
  # Customer.all -> [Customer: instances]
  def self.all
    @@all
  end

  # given full name String, returns first matching Customer
  # Customer.find_by_name(String) -> Customers
  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  # given first name String, returns array of matching Customers
  # Customer.find_all_by_first_name(String) -> [Customers]
  def self.find_all_by_first_name(first_name)
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end

  # returns array of all Customer full names
  # Customer.all_names -> [String]
  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  # given Restaurant instance, review as a String, and rating as Integer from 1 - 5
  # create and return Review instance
  # #add_review(Restaurant: instance, content: String, rating (1 - 5): Integer)
  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  # returns list of Reviews Customer instance has made
  # #reviews -> [Review: instance]
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  # returns number of Reviews Customer instance has made
  # #num_reviews -> Integer
  def num_reviews
    self.reviews.length
  end

  # returns list of Restaurant instances Customer has reviewed
  # #restaurants -> [Restaurant: instances]
  def restaurants
    reviewed_restaurants = self.reviews.map do |review|
      review.restaurant
    end
    reviewed_restaurants.uniq
  end

end
