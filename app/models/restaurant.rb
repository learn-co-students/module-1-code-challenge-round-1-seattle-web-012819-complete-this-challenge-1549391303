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

#possible helper methods
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer.uniq
    end
  end

  def self.find_by_name(name)
    @@all.find do |place|
      place.name == name
    end
  end

  #need to make two variables and divide the total number by review
  #   def average_star_rating
  #     number = make it to_f
  #     review = same
  #   end
  # end

end
