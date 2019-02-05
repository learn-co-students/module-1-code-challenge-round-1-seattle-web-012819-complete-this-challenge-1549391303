class Restaurant
  attr_accessor :name
@@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def customers
    fidget = []
    Review.all.each do |rev|
      if rev.restaurant == self
        fidget << rev.customer
      else end
      end
    fidget.uniq
  end

  def reviews
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def average_star_rating
    num_of_revs = 0
    total_stars = 0
    arr = []
    Review.all.each do |rev|
      if rev.restaurant == self
        arr << rev.rating
        num_of_revs += 1
      else end
      end  
    total_stars = arr.inject(0){|sum,x| sum + x }
    total_stars/num_of_revs  
  end

  def longest_review
    most = 0
    winner = nil
    self.reviews.each do |rev|
      if rev.content.length > most
        most = rev.content.length
        winner = rev
      else end
      end
    winner
  end       

  def self.find_by_name(name)
    self.all.find do |rest|
      rest.name == name
    end
  end

  def self.all
    @@all
  end
end # of class
