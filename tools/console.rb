require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



ben = Customer.new("ben", "haugen")
kevin = Customer.new("kevin", "knox")
benji = Customer.new("ben", "dover")

pizza_hut = Restaurant.new("pizza_hut")
wendys = Restaurant.new("wendys")

r1 = Review.new(ben, wendys)
r2 = Review.new(kevin, wendys)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
