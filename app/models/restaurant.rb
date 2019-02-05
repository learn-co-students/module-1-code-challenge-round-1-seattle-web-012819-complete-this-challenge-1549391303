class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def ratings
    reviews.map {|review| review.rating}
  end

  def average_star_rating
    ratings.reduce(:+).to_f / (reviews.size).to_f
  end

  def contents
    reviews.map {|review| review.content}
  end

  def longest_review
    contents.sort_by {|string| string.size}.last
  end

end
