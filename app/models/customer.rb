class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def self.all
    Review.all.map {|review|
      review.customer
    }.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def self.find_by_name(full_name)
    self.all.select {|customer|
      customer.full_name == full_name
    }
  end

  def self.find_all_by_first_name(first_name)
    self.all.select {|customer|
      customer.first_name == first_name
    }
  end

  def reviews
    Review.all.select {|review|
      review.customer == self
    }
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map {|review|
      review.restaurant
    }
  end

end