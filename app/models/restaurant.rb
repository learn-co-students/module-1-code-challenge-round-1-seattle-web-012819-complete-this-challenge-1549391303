class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating
    rating = 0
    self.reviews.each do |review|
      rating += review.rating
    end
    (rating.to_f / self.reviews.count).round(1)
  end

  def longest_review
    review_count = 0
    longest_review = nil
    self.reviews.each do |review|
      if review.content.length > review_count
        review_count = review.content.length
        longest_review = review
      end
    end
    longest_review
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end

end
