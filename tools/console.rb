require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# New Cusomers
luke = Customer.new("Luke", "Skywalker")
han = Customer.new("Han", "Solo")
spongebob = Customer.new("Spongebob", "Squarepants")
patrick_bateman = Customer.new("Patrick", "Bateman")
patrick_stewart = Customer.new("Patrick", "Stewart")
batman = Customer.new("Bruce", "Wayne")
superman = Customer.new("Clark", "Kent")

# New Restaurants
pizza_joes = Restaurant.new("Pizza Joe's")
quiznos = Restaurant.new("Quiznos")
ihop = Restaurant.new("IHOP")
krusty_krab = Restaurant.new("Krusty Krab")
chum_bucket = Restaurant.new("Chum Bucket")

# New Reviews customer.add_review(restaurant, content, rating)
luke.add_review(pizza_joes, "This place is great! Best pizza ever.", 5)
luke.add_review(quiznos, "Pretty standard.", 3)
luke.add_review(ihop, "Terrible. Very dirty.", 1)
luke.add_review(krusty_krab, "Wow! Best burgers ever.", 5)
luke.add_review(chum_bucket, "Terrible. Filthy place.", 1)
han.add_review(pizza_joes, "Great pizza.", 5)
han.add_review(quiznos, "Basic sub shop.", 3)
han.add_review(chum_bucket, "Terrible!", 1)
spongebob.add_review(krusty_krab, "Best burgers ever!", 5)
spongebob.add_review(chum_bucket, "Never go here.", 1)
patrick_bateman.add_review(pizza_joes, "A fine establishment.", 4)
patrick_bateman.add_review(krusty_krab, "Amazing burgers.", 5)
patrick_stewart.add_review(pizza_joes, "Best pizza ever? This place makes it so.", 5)
batman.add_review(pizza_joes, "Good, but I've had better.", 4)
batman.add_review(ihop, "Best place to fight crime, but very dirty.", 3)
superman.add_review(pizza_joes, "Great pizza!", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line