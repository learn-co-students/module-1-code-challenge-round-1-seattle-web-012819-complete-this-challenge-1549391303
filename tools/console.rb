require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bob = Customer.new('Bob', 'Jacobs')
tom = Customer.new('Tom', 'Brady')
boba = Customer.new('Bob', 'Anderson')
sara = Customer.new('Sara', 'James')
bob2 = Customer.new('Bob', 'Jacobs')

mcd = Restaurant.new('McDonald')
bk = Restaurant.new('BurgerKing')
kfc = Restaurant.new('KFC')

r1 = Review.new(bob, mcd, 3, 'okay!')
r2 = Review.new(boba, mcd, 4, 'nice')
r3 = Review.new(sara, bk, 2, 'bleh')
r4 = Review.new(sara, kfc, 5, 'yes!')
r5 = Review.new(tom, bk, 1, 'nooo...')
r6 = Review.new(sara, kfc, 4, 'worse second time')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
