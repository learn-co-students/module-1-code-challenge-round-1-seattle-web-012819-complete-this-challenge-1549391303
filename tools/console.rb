require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Jessica", "Poe")
c2 = Customer.new("Tiffany", "Carter")
c3 = Customer.new("Joshua", "Reasoner")

r1 = Restaurant.new("Chilis")
r2 = Restaurant.new("Fridays")
r3 = Restaurant.new("Applebees")

rv1 = Review.new(c1, r1, "I like this", 5)
rv2 = Review.new(c1, r2, "I hate this", 1)
rv3 = Review.new(c2, r3, "This is okay", 3)
rv4 = Review.new(c2, r2, "Love it", 5)
rv5 = Review.new(c3, r1, "Hate it", 1)
rv6 = Review.new(c2, r1, "hate it so much", 1)

puts "Counts num cust reviews"
puts c1.num_reviews
puts 
puts "Cust rest's review names"
puts c1.restaurants
puts 
puts "List of rest reviews"
puts r1.reviews
puts "List of all the customers who have left a review"
puts r1.customers
puts 
puts "Show the avg star rating based on a review"
puts r1.average_star_rating
puts 
puts "find_by_name"
puts Customer.find_by_name("Jessica Poe")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line