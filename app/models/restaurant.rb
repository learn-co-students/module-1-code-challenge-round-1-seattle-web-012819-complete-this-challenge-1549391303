class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def find_restaurant
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.find_restaurant.map{|review| review.customer}.uniq
  end

  def reviews
    self.find_restaurant.map{|review| review.content}
  end

  def average_star_rating
    num_reviews = self.find_restaurant.count
    total_reviews = self.find_restaurant.map{|review| review.rating}.reduce(:+)
    (total_reviews.to_f / num_reviews).round(2)
  end

  def longest_review
    self.reviews.max_by{|review| review.length}
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find{|restaurant| restaurant.name == name}
  end

end
