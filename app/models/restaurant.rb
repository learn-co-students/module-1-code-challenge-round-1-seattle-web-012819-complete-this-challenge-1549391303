class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name: "Barb's Pizza Truck")
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.collect{|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = self.reviews.collect{|review| review.rating}
    ratings.reduce(:+)/ratings.count
  end

  def longest_review
    self.reviews.max_by{|review| review.content.length}
  end



  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|r| r.name == name}
  end

end
