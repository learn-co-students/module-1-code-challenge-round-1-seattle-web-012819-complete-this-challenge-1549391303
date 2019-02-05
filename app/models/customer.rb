class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name: "snob", last_name: "bob")
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant: nil, content: "", rating: 5)
    Review.new(restaurant: restaurant, content: content, rating: rating)
  end

  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    self.reviews.count
  end

  def restaurants
    self.reviews.collect{|review| review.restaurant}.uniq
  end



  def self.find_by_name(full_name)
    self.all.find{|customer| customer.full_name == full_name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select{|customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.collect{|customer| customer.full_name}
  end

  def self.all
    @@all
  end


end
