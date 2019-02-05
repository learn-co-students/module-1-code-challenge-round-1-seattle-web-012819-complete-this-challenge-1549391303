class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    array = self.reviews.map {|review| review.customer}
    array.uniq
  end

  def average_star_rating
    rating_sum = 0.0
    total_review = 0.0

    self.reviews.each do |review|
      rating_sum += review.rating
      total_review += 1
    end
    average = rating_sum / total_review
    average
  end

  def longest_review
    # review_length = 0
    # max_length = 0
    # longest_review = nil
    self.reviews.each do |review|
      review.content.max_by(&:length)
    #   if review_length > max_length
    #     review_length += review.content.length
    #     longest_review = review.content
    #   end
    # end
    # longest_review
    end
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select {|restaurant| restaurant.name == name}
  end
end #end of Restaurant class
