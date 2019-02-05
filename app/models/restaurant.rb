class Restaurant
  attr_accessor :name

  @@all_restaurants = []

  def initialize(name)
    @name = name

    @@all_restaurants << self
  end

  def self.all
    @@all_restaurants
  end

  def self.find_by_name(name)
    Restaurant.all.find { |rest| rest.name == name }
  end

  def customers
    Review.all.each_with_object([]) { |rev, arr| arr << rev.customer if rev.restaurant == self }
          .uniq
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def average_star_rating
    self.reviews.reduce(0) { |sum, review| sum + review.rating  }.to_f / self.reviews.count
  end

  def longest_review
    curr_long_review = ""

    self.reviews.each do |review|
      curr_long_review = review.content if review.content.length > curr_long_review.length
    end
    curr_long_review
  end
end
