require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Adam", "Andrews")
c2 = Customer.new("Betty", "Boop")
c3 = Customer.new("Carl", "Carlson")
c4 = Customer.new("Darla", "Davis")
c5 = Customer.new("Betty", "Andrews")

rs1 = Restaurant.new("McDonald's")
rs2 = Restaurant.new("Smith")
rs3 = Restaurant.new("Pho Shizzle")

#(customer, restaurant, rating, content)
rv1 = Review.new(c1, rs1, 5, "Meh")
rv2 = Review.new(c2, rs1, 2, "Beef")
rv3 = Review.new(c3, rs2, 5, "Pricey")
rv4 = Review.new(c4, rs2, 9, "Will go again")
rv5 = Review.new(c1, rs3, 6, "Better than average")
rv6 = Review.new(c2, rs3, 8, "Good")
rv7 = Review.new(c3, rs3, 10, "I love soup")
rv8 = Review.new(c1, rs1, 6, "Better")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
