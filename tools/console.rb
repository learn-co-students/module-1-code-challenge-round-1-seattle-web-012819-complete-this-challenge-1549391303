require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("John", "Doe")
customer2 = Customer.new("Jane", "Dur")
customer3 = Customer.new("Matt", "Brophy")
customer4 = Customer.new("Misha", "Linn")
customer5 = Customer.new("Matt", "Notbrophy")

mcdonalds = Restaurant.new("mcdonalds")
prime = Restaurant.new("prime")
subs = Restaurant.new("Subs")


customer1.add_review(mcdonalds, "This place sucks.", 1)
customer1.add_review(prime, "This place sucks a little less.", 2)
customer1.add_review(subs, "This place sucks the least.", 3)
customer2.add_review(mcdonalds, "Woohoo!", 8)
customer2.add_review(prime, "Woohoo!", 8)
customer3.add_review(prime, "I love steak!", 10)
customer3.add_review(subs, "I love steak sandwhiches!", 9)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line