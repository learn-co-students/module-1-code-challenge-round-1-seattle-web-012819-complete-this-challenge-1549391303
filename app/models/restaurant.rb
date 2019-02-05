class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  #returns an array of all restaurants - check
  def self.all
    @@all
  end

  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      if restaurant.name == name
        return restaurant
      end
    end
  end

  #Returns a unique list of all customers who have reviewed a particular restaurant.

  #expect that they will need to specify the particular restaurant and check all reviews against
  def customers(name)
    all_reviewers = []
    Review.all.each do |review|
      if review.restaurant == name
        all_reviewers << review.customer
      end
    end
    return all_reviewers
  end

  #returns an array of all reviews for that restaurant
  def reviews
    all_reviews = []
    Review.all.each do |review|
      if review.restaurant == self
        all_reviews << review
      end
    end
    all_reviews
  end

  #returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    all_reviews = []
    total = 0
    Review.all.each do |review|
      if review.restaurant == self
          total += review.rating
          all_reviews << review
      end
    end
    number = all_reviews.length
    return total.to_f/number
  end

  #returns the longest review content for a given restaurant

  #check all reviews  for reviews for restaurant
  #create a tally to keep track of the length of each restaurant review
  #return longest at the end

  def longest_review
    tally = Hash.new(0)
    longest_length = 0
    longest_review = nil
    Review.all.each do |review|
      if review.restaurant == self
        tally[review.length] += review.content.length
        if tally[review.length] > longest_length
          longest_length = tally[review.length]
          longest_review = review.content
        end
      end
    end 
    return longest_review
  end

end
