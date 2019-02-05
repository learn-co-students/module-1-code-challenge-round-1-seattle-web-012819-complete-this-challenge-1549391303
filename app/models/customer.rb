class Customer
  attr_accessor :first_name, :last_name

  @@all = []

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
    self.all.find do |customer|
      customer.first_name && customer.last_name == name 
    end
  end

  def Customer.find_all_by_first_name(name)
      new_array = []
    self.all.each do |customer|
      if customer.first_name == name
        new_array << customer.first_name
      end
    end
    new_array
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    self.restaurants.length
  end

  def restaurants
    review_array = []
    Review.all.each do |review|
      if review.customer == self
        review_array << review.restaurant
      end
    end
    review_array
  end
  
end #end of class


# #### Build the following methods on the `Customer` class

# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches

