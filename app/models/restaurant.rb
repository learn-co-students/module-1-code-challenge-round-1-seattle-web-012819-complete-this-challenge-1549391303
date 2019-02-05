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
    self.all.find {|restaurant| name == restaurant.name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    array = reviews.map {|review| review.rating}
    array.inject {|sum, n| sum + n}.to_f / array.count.to_f
  end

  def longest_review
    longest_count = 0
    longest_content = nil
    hash = Hash.new(0)
    reviews.each do |review|
      hash[review] = review.content.length
      if hash[review] > longest_count
        longest_count = review.content.length
        longest_content = review
      end
    end
    longest_content
  end

end
