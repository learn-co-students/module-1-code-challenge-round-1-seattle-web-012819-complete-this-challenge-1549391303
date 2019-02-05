class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all.append(self)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.select {|restaurant| restaurant.name == name}
  end

  def customers
    customers = []
    Review.all.select do |review|
      if self.name == review.restaurant.name
        customers << review.customer.full_name
      end
    end
    customers.uniq
  end

  def reviews
    all_reviews = []
    Review.all.select do |review|
      if review.restaurant.name == self.name
        all_reviews << review
      end
    end
    all_reviews
  end

  def average_star_rating
    all_ratings = []
    Review.all.select do |review|
      if review.restaurant.name == self.name
        all_ratings << review.rating
      end
    end
    all_ratings.sum.to_f/all_ratings.count.to_f
  end

  def longest_review
    all_reviews = []
    Review.all.select do |review|
      if review.restaurant.name == self.name
        all_reviews << review.content
      end
    end
    all_reviews.sort_by{|x| x.length}.last
  end
end
