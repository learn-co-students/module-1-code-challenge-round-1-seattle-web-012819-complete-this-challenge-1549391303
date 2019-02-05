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
    #given a string of restaurant name, returns the first restaurant that matches
  end

  def customers
    #Returns a unique list of all customers who have reviewed a particular restaurant.
    Review.all.select do |customer|
      customer.restaurant.uniq
    end
  end

  def reviews
    Review.all.map do |review|
      review.content == self
    end
  end

  def average_star_rating
    Review.all.map do |rating|
      rating.rating == self
    end
  end

  def longest_review
    longest = nil
    Review.all.each do |review|
      if review.content.length > longest
        longest << review
      end
    end 
  end

end
