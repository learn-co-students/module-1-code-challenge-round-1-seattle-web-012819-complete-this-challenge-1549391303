require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Jacky", "john")
customer2 = Customer.new("Tim", "bard")

restaurant1 = Restaurant.new("pizza_world")
restaurant2 = Restaurant.new("burger_world")

review1 = Review.new(customer1, restaurant1, 4, "wonderful place")
review1 = Review.new(customer2, restaurant2, 5, "best ever")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
