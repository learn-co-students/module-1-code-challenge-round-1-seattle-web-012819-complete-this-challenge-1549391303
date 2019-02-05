class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    Review.all.map {|review|
      review.restaurant
    }.uniq
  end

  def self.find_by_name(name)
    self.all.select {|restaurant|
      restaurant.name == name
    }
  end

  def reviews
    Review.all.select {|review|
      review.restaurant == self
    } 
  end

  def customers
    self.reviews.map {|review|
      review.customer
    }
  end

  def average_star_rating
    sum = self.reviews.map {|review|
      review.rating
    }.inject(:+)
    sum / self.reviews.length
  end

  def longest_review
    self.reviews.map {|review|
      review.content
    }.max_by {|content| content.length}
  end

end