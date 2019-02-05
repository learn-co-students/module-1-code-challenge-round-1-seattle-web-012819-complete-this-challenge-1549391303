require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bob = Customer.new("Bob", "Thorton")
emily = Customer.new("Emily", "Wagner")
sally = Customer.new("Sally", "Smith")
billy = Customer.new("Billy", "Bob")
josh = Customer.new("Josh", "Weldon")
tom = Customer.new("Tom", "Scott")
emilyr = Customer.new("Emily", "Reagan")
emilyt = Customer.new("Emily", "Travis")

fns = Restaurant.new("Food n Stuff")
mfs = Restaurant.new("More Food Store")

bad_review = Review.new(fns, emily, 1, "Really really bad")
meh_review = Review.new(mfs, sally, 3, "Kind of meh")
good_review = Review.new(fns, tom, 5, "Very Good")
long_review = Review.new(fns, tom, 5, "This is a really really really really long review")


#----------Guest Class Tests
# puts Customer.all
# puts Customer.find_by_name("Emily Wagner").first_name
# puts Customer.find_all_by_first_name("Emily")
# puts Customer.all_names

#----------Restaurant Class Tests
# puts Restaurant.all
# puts Restaurant.find_by_name("Food n Stuff").name

#----------Review Class Tests
# puts Review.all

puts emily.add_review(mfs, "ok enough", 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
