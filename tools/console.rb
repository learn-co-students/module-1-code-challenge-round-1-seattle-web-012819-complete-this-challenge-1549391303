require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("The Place")
r2 = Restaurant.new("The Gig")

c1 = Customer.new("Sally", "Smith")
c2 = Customer.new("Ted", "Johnson")
c3 = Customer.new("Eugene", "Baker")

rev1 = Review.new(r1, c1, 4, "Some stuff about this restaurant.")
rev1 = Review.new(r1, c2, 2, "Some things about this restaurant.")
rev1 = Review.new(r1, c3, 1, "Some information about this restaurant.")
rev1 = Review.new(r2, c1, 5, "Some asides about this restaurant.")
rev1 = Review.new(r2, c2, 3, "Some blah about this restaurant.")
rev1 = Review.new(r2, c3, 2, "Some jokes about this restaurant.")
rev1 = Review.new(r2, c1, 5, "Some niceties about this restaurant.")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
