require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

nneka = Customer.new("Nneka", "Obioha")
obinna = Customer.new("Obinna", "Edu")
corey = Customer.new("Corey", "Porter")
nneka_2 = Customer.new("Nneka", "Iweala")

sahal = Restaurant.new("Sahal Restaurant")
pizza_place = Restaurant.new("A Pizza Place")

nneka_pizza = Review.new("My slice was bomb.", nneka, pizza_place, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
