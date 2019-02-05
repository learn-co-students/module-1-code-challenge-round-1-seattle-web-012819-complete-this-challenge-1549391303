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

  # `Restaurant.find_by_name(name)`
  #  - given a string of restaurant name, returns the first restaurant that matches

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    #if time, refactor this.  Maybe put uniq on the end of the first line
    all_customers = self.reviews.map { |review| review.customer }
    unique_customers = all_customers.uniq
  end

  # - `Restaurant#average_star_rating`
  #   - returns the average star rating
  # for a restaurant based on its reviews

  def average_star_rating
    ratings = self.reviews.map { |review| review.rating }
    #arr.sum.fdiv(arr.size)
    ratings.sum.fdiv(ratings.size)
  end

  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant

  def longest_review
    long_review = self.reviews.max_by { |review| review.content.length}
    long_review.content

    #note: would write it the way below in case there were two reviews that were the same max_length.
    #the downside is that it will always be returned as an array.
    #Could flatten? if there is only a single string?

    # max_length = long_review.content.length
    # long_reviews = self.reviews.select { |review| review.content.lenth == max_length}
    # long_reviews.map { |review| review.content }
  end





end
