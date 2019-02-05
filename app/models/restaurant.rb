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

  def self.find_by_name(name_string) #returns nil if no match
    @@all.find do |restaurant_object|
      restaurant_object.name == name_string
    end
  end

  def customers
    x = self.reviews.collect do |review_object|
      review_object.customer
    end
    x.uniq
  end

  def reviews
    Review.all.select do |review_object|
      review_object.restaurant == self
    end
  end

  def average_star_rating
    x = self.reviews.collect do |review_object|
      review_object.rating
    end
    sum = x.inject(0) {|sum, rating| sum + rating}.to_f
    sum/x.count.to_f
  end

  def longest_review
    x = self.reviews.collect do |review_object|
      review_object.content
    end
    sorted = x.sort_by(&:length)
    sorted.pop
  end

end
