class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    @@all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(first)
    @@all.select {|customer| customer.first_name == first}
  end

  def self.all_names
    @@all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    reviews.size
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end


end
