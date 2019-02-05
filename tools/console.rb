require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customer
ellen = Customer.new("Ellen", "H")
steph = Customer.new("Steph", "R")
jenn = Customer.new("Jenn", "S")
alex = Customer.new("Alex", "H")
pallavi = Customer.new("Pallavi", "P")

puts ellen # <Customer:0x007f84e22a3988>
puts ellen.last_name # => H
puts pallavi.first_name # => Pallavi
puts
# Restaurant
del_pueblo = Restaurant.new("Del Pueblo")
ihop = Restaurant.new("IHOP")
dot = Restaurant.new("Dot Diner")

puts del_pueblo # <Restaurant:0x007fd44ca65e78>
puts del_pueblo.name # Del Pueblo
puts

# Review(customer, restaurant, rating, content)
review1 = Review.new(ellen, del_pueblo, 5, "Great!")
review2 = Review.new(steph, ihop, 2, "Just OK")
review3 = Review.new(steph, del_pueblo, 4, "Good food!")
review4 = Review.new(ellen, dot, 4, "Good!")
review5 = Review.new(ellen, ihop, 1, "Meh")
review3 = Review.new(alex, del_pueblo, 3, "I liked it!")

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
