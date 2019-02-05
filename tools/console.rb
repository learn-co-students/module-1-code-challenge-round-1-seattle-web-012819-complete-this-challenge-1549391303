require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

brad = Customer.new("Brad", "Herrington")
chad = Customer.new("Chad", "Perrington")
dad = Customer.new("Dad", "Derrington")

ada = Restaurant.new("April's Dope Alehouse")
bfe = Restaurant.new("Big Fucking Eatery")
tyi = Restaurant.new("Don't Come Here")

r1 = Review.new(brad, ada, 3, "It's ok")
r2 = Review.new(chad, bfe, 5, "I only eat here")
r3 = Review.new(dad, tyi, 1, "They slap you before you eat")
r4 = Review.new(brad, bfe, 4, "The wings were pterodactyl wings")
r5 = Review.new(dad, bfe, 4, "I wish they slapped you before you ate")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line