require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Steve", "Jones")
c2 = Customer.new("Phil", "Smith")
c3 = Customer.new("Steve", "Potter")
c4 = Customer.new("Harry", "Williams")

r1 = Restaurant.new("McDonalds")
r2 = Restaurant.new("Cheesecake Factory")
r3 = Restaurant.new("Joes")


rv1 = Review.new(c1, r1, 3, "It was just alright" )
rv2 = Review.new(c2, r2, 4, "Delightful" )
rv3 = Review.new(c2, r3, 1, "Yuck" )
rv4 = Review.new(c3, r1, 3, "Not too bad for a chain restaurant" )
rv5 = Review.new(c3, r1, 2, "Just average this time" )
rv6 = Review.new(c2, r3, 3, "Much better than last time" )
rv6 = Review.new(c4, r2, 5, "I really like that they have so many options" )


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
