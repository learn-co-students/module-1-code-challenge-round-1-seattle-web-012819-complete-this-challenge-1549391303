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

  def self.find_by_name(rest_name)
    @@all.find do |restaurant|
       rest_name == restaurant.name
    end
  end

  def customers
    customer_rest_array = []
    Review.all.each do |review|
      if review.customer == self
        customer_rest_array << review.customer
      end
    end
    return customer_rest_array.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    average = 0
    count = 0
    Review.all.each do |review|
      if review.restaurant == self
        average += i.rating
        count += 1
      end
    end
    average / count.to_f
  end

  def longest_review
    content_length = ""
    self.reviews.each do |review|
      if review.content.size > content_length.size
        content_length = review.content
      end
    end
    return content_length
  end
end#end of class
