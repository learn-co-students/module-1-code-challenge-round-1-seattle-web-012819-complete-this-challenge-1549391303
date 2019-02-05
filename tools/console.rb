require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Kevin", "McMinn")
c4 = Customer.new("Kevin", "Smith")
c2 = Customer.new("Brad", "Pitt")
c3 = Customer.new("George", "Clooney")

rest1 = Restaurant.new("Elliot Bay")
rest2 = Restaurant.new("The Annex")
rest3 = Restaurant.new("Chili's")
rest4 = Restaurant.new("Rock Bottom")

rev1 = Review.new(c1, rest3, "March", "5", "This place was amazing!!!")
rev2 = Review.new(c2, rest4, "April" , "4", "I enjoyed the food, service was a bit slow though")
rev3 = Review.new(c3, rest1, "May", "1", "This place sucked ASS")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
