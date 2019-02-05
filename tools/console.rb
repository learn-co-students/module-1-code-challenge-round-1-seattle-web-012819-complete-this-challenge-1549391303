require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#restaurant objects
res1 = Restaurant.new("Dick's")
res2 = Restaurant.new("PhoShizzle")
res3 = Restaurant.new("Pagliacci")
res4 = Restaurant.new("Subway")

#customer objects
c1 = Customer.new("Eli","Merrell")
c2 = Customer.new("Bob","Smith")
c3 = Customer.new("Tonald","Drump")
c4 = Customer.new("Suzie","Jones")
c5 = Customer.new("Suzie","Smith")


#review objects
rev1 = Review.new(res1,c1,"This place is ok but I'm not impressed",3)
rev2 = Review.new(res1,c4,"Great!",4)
rev3 = Review.new(res2,c2,"Ten out of ten would eat again",5)
rev4 = Review.new(res4,c3,"These sandwiches taste like garbage",2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
