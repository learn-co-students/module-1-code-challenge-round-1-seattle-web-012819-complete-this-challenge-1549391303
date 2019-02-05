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

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end 


  def num_reviews
    count = []
    Review.all.select do |review|
      if review.customer == self 
        count << review.customer
      end 
  end
  count.length
end 

  def restaurants
    Review.all.collect do |review|
      if review.customer == self 
        review.restaurant.name
      end 
  end.compact
end 



def self.find_by_name(name)
  @@all.find do |customer|
    if name == customer.full_name 
      customer.first_name 
    end 
  end 
  # - given a string of a **full name**,
  # returns the **first customer** whose full name matches
end 

def self.find_all_by_first_name(name)
#   given a string of a first name, returns an 
#   **array** containing all customers with that first name
end 

def self.all_names 
  # should return an **array** of 
  # all of the customer full names
end 




end #end of Customerm Class 
