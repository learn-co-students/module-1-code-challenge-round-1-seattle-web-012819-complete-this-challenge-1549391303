require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#build restaurants
mcdonalds = Restaurant.new("McDonalds")
dicks = Restaurant.new("Dicks")
red_mill = Restaurant.new("Red Mill")

#build customers
emily_hankins = Customer.new("Emily", "Hankins")
alex_bartlett = Customer.new("Alex", "Bartlett")
zach_groher = Customer.new("Zach", "Groher")
alex_joseph = Customer.new("Alex", "Joseph")

#build reviews
r1 = Review.new(emily_hankins, dicks, "The food here was great", 4)
r2 = Review.new(emily_hankins, red_mill, "Meh", 2)
r3 = Review.new(alex_bartlett, mcdonalds, "I effing love Miccie Ds, I could talk about it all day long", 5)
r4 = Review.new(alex_bartlett, dicks, "Aight, not worth the hype", 3)
r5 = Review.new(zach_groher, dicks, "This place isn't what I thought it was", 1)
r6 = Review.new(zach_groher, red_mill, "Fantastic", 6)z
r7 = Review.new(alex_joseph, dicks, "Not like my moms cooking", 2)
r8 = Review.new(zach_groher, dicks, "tried it again, still sucks", 0)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
