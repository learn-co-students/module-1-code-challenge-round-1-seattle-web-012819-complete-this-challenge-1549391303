require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

pinnochios = Restaurant.new(name: "Pinnochios")
barb_pizza = Restaurant.new
c_factory = Restaurant.new(name: "Cheesecake Factory")

rob = Customer.new(first_name: "rob")
glob = Customer.new(first_name: "glob")
snob = Customer.new
snob2 = Customer.new(last_name: "blobkowsky")

r1 = Review.new(restaurant: pinnochios, customer: rob, rating: 30, content: "WOWOWOW SO GOOD")
r2 = Review.new(restaurant: pinnochios, customer: glob, rating: 2, content: "meh")
r3 = Review.new(restaurant: pinnochios, customer: snob, rating: 4, content: "meh")
r4 = Review.new(restaurant: pinnochios, customer: rob, rating: 3, content: "Wasn't as good the second time")
r5 = Review.new(restaurant: c_factory, customer: rob, rating: 5, content: "What a great restaurant!")
r6 = Review.new(restaurant: barb_pizza, customer: glob, rating: -2000, content: "never agian... never.")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

# Customer methods :)

# Restaurant.find_by_name("Pinnochios") => #<Restaurant:0x007fb0f191cd38 @name="Pinnochios"> :)

# Customer.find_by_name("snob bob") => #<Customer:0x007fb0f191c360 @first_name="snob", @last_name="bob"> :)

# Customer.all_names => ["rob bob", "glob bob", "snob bob", "snob blobkowsky"] :)

# Customer.find_all_by_first_name("snob")
# => [#<Customer:0x007fe3529eec50 @first_name="snob", @last_name="bob">,
#  #<Customer:0x007fe3529eea48 @first_name="snob", @last_name="blobkowsky">] :)

# rob.num_reviews => 3 :)

# rob.restaurants => [#<Restaurant:0x007f89499a7a48 @name="Pinnochios">, #<Restaurant:0x007f89499a7778 @name="Cheesecake Factory">] :)

# rob.add_review(restaurant: barb_pizza, content: "wow that was absolutely disgusting", rating: 1) => #<Review:0x007fcbe1cddef8
#  @content="wow that was absolutely disgusting",
#  @customer=nil,
#  @rating=1,
#  @restaurant=#<Restaurant:0x007fcbe1a075a8 @name="Barb's Pizza Truck">> :)




# Restaurant methods

# Restaurant.find_by_name("Cheesecake Factory") => #<Restaurant:0x007fcbe1a07440 @name="Cheesecake Factory"> :)

# barb_pizza.longest_review => #<Review:0x007fcbe1cddef8
#  @content="wow that was absolutely disgusting",
#  @customer=nil,
#  @rating=1,
#  @restaurant=#<Restaurant:0x007fcbe1a075a8 @name="Barb's Pizza Truck">> :)

# pinnochios.average_star_rating => 3 :)
# barb_pizza.average_star_rating => 1 :)

# pinnochios.customers
# => [#<Customer:0x007fcbe1a07170 @first_name="rob", @last_name="bob">,
#  #<Customer:0x007fcbe1a070a8 @first_name="glob", @last_name="bob">,
#  #<Customer:0x007fcbe1a06f18 @first_name="snob", @last_name="bob">] :)
