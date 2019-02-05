class Restaurant
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select { |r| r.name == name }.first
  end

  def reviews
    Review.all.select { |rv| rv.restaurant == self }
  end

  def customers
    self.reviews.map { |rv| rv.customer }.uniq
  end

  def average_star_rating
    ((self.reviews.map{ |rv| rv.rating }.inject(0) { |sum,i| sum+i }).to_f / (self.reviews.length).to_f).to_f
  end

  def longest_review
    self.reviews.max_by { |rv| rv.content.length }
  end
end
