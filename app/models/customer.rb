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

#possible helper methods, may use later
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant.uniq
    end
  end

  def self.find_by_name(name)
    @@all.find do |person|
      person.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |person|
      person.first_name == name
    end
  end

  def self.all_names
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    reviews.count
  end


end
