require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

me = Customer.new('Ezra', 'Schwepker')
toby = Customer.new('Toby', 'McGuire')
elon = Customer.new('Elon', 'Musk')

puts elon.full_name
puts Customer.all
puts Customer.all_names
puts Customer.find_by_name(elon.full_name)
puts Customer.find_all_by_first_name(elon.first_name)

westward = Restaurant.new('Westward')
mcdonalds = Restaurant.new('McDonalds')
panisse = Restaurant.new('Chez Panisse')

me.add_review(panisse, "this is pretty good", 4)
me.add_review(mcdonalds, "best meal of my life", 5)
me.add_review(westward, "meh", 3)
me.add_review(westward, "actually that was ok", 4)

toby.add_review(mcdonalds, "ehhhhhh", 1)
elon.add_review(mcdonalds, "mehmeh", 2)

puts me.reviews
puts me.num_reviews
puts me.restaurants

puts Restaurant.all
puts Restaurant.find_by_name(westward.name)

puts westward.reviews
puts westward.customers
puts westward.average_star_rating
puts westward.longest_review

puts Review.all

binding.pry
0 #leave this here to ensure binding.pry isn't the last line