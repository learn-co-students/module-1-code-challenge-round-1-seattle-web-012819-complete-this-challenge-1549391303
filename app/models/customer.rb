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

  def self.all
    @@all
  end

  # - `Customer.all_names`
  #   - should return an **array** of all of the customer full names

  def self.all_names
    @@all.map { |customer| customer.full_name }
  end

  # `Customer.find_by_name(name)`
  #   - given a string of a **full name**,
  #   returns the **first customer** whose full name matches

  def self.find_by_name(name)
    @@all.find { |customer| customer.full_name == name}
  end

  # - `Customer.find_all_by_first_name(name)`
  #   - given a string of a first name,
  #   returns an **array** containing all customers with that first name

  def self.find_all_by_first_name(name)
    @@all.select { |customer| customer.first_name == name }
  end

  # - `Customer#add_review(restaurant, content, rating)`
  #   - given a **restaurant object**, some review content (as a string),
  #   and a star rating (as an integer),
  #   creates a new review and associates it with that customer and restaurant.

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    #if time, refactor this.  Maybe put uniq on the end of the first line. and remove all_restaurants variable
    all_restaurants = self.reviews.map { |review| review.restaurant }
    unique_restaurant = all_restaurants.uniq
  end

  # - `Customer#num_reviews`
  #   - Returns the total number of reviews that a customer has authored

  def num_reviews
    self.reviews.length
  end





end
