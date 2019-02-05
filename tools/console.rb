require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


pat = Customer.new("Patrick", "Starr")
fran = Customer.new("Patrick", "Fran")
stan = Customer.new("Patrick", "Stan")

r1 = Restaurant.new("Steak N' Shake")
r2 = Restaurant.new("Shack N' Snack")
r3 = Restaurant.new("Bake N' Cake")

r1 = Restaurant.new("Steak N' Shake")
r2 = Restaurant.new("Shack N' Snack")
r3 = Restaurant.new("Bake N' Cake")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line