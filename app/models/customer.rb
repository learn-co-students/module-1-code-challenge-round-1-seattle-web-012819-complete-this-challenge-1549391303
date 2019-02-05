class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    #given a string of a full name, returns the first customer whose full name matches
    all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    #given a string of a first name, returns an array containing all customers with that first name
    all.map do |customer|
      customer.first_name = name
    end
  end

  def self.all_names
    #should return an array of all of the customer full names
    all.select do |customers|
      customers.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    #Returns the total number of reviews that a customer has authored
    count = 0
    Review.all.each do |customer|
      customer.rating == true
      count += 1
    end
    count
  end

  def restaurants
    #Returns a unique array of all restaurants a customer has reviewed
    Review.all.map do |restaurant|
      restaurant.restaurant #didn't finish
  end
end
#end of Customer class
