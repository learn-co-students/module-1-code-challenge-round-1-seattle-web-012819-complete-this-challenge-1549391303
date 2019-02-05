require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

## Customers
bob_hope = Customer.new("Bob", "Hope")
john_smith = Customer.new("John", "Smith")
frank_sinatra = Customer.new("Frank", "Sinatra")

## Restaurants
solstice_cafe = Restaurant.new("Solstice Cafe")
grateful_bread = Restaurant.new("Grateful Bread")
la_marzoccco = Restaurant.new("La Marzocco")

## Ratings
bob_hope.add_review(solstice_cafe, "Great little cafe.", 3)
bob_hope.add_review(grateful_bread, "Fantastic lunch.", 4)
bob_hope.add_review(la_marzocco, "Best espresso in town.", 4)
john_smith.add_review(solstice_cafe, "Hipsters.", 2)
john_smith.add_review(grateful_bread, "Hippies.", 3)
frank_sinatra.add_review(solstice_cafe, "Great place to eat and I can't wait to go back!", 5)
frank_sinatra.add_review(la_marzocco, "Now this is my kinda place!", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line