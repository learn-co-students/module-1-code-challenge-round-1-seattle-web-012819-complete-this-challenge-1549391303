require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customers

cris = Customer.new('Cris', 'Hanks')
jonny = Customer.new('Jonny', 'Smith')
ted = Customer.new('Ted', 'Teddington')

#Restaurants

eat_it = Restaurant.new("Eat It")
regular_sandwiches = Restaurant.new("Regular Sandwiches")
horse_meat = Restaurant.new("Horse Meat")

#Reviews

r1 = Review.new(cris, eat_it, 4, 'Decent food!')
r2 = Review.new(jonny, regular_sandwiches, 2, "This food gets more regular by the day. Not sure if that's a good thing?")
r3 = Review.new(ted, horse_meat, 5, 'As advertised.')
r4 = Review.new(jonny, horse_meat, 1, 'As advertised. Not pleased.')



binding.pry
0 #leave this here to ensure binding.pry isn't the last line