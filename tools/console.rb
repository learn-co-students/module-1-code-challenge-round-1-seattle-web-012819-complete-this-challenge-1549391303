require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Anne", "Perkins")
c2 = Customer.new("Ron", "Swanson")
c3 = Customer.new("Leslie", "Knope")
c4 = Customer.new("April", "Ludgate")

r1 = Restaurant.new("Junebaby")
r2 = Restaurant.new("Mcdonalds")
r3 = Restaurant.new("Purple")
r4 = Restaurant.new("Taco's Chuki")

rv1 = Review.new(c1, r1, "This place was great", 3 )
rv2 = Review.new(c2, r1, "This place was not great", 2 )
rv3 = Review.new(c3, r2, "This place was wow", 1 )
rv4 = Review.new(c1, r3, "This place was awesomely great", 3 )
rv5 = Review.new(c4, r4, "This place was super supergreat", 5 )


binding.pry
0 #leave this here to ensure binding.pry isn't the last line