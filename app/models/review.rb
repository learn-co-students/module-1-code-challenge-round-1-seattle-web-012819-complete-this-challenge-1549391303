class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content
  @@all = []
  def initialize (customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end


  def customer
    customer_array =[]
    self.all.each do |i|
      customer_array << i.customer
    end
    return customer_array
  end

  def restaurant
    rest_array =[]
    self.all.each do |i|
      rest_array << i.restaurant
    end
    return rest_array
  end

  def rating
    rating_array =[]
    @@all.each do |i|
      rating_array << i.rating
    end
    return rating_array
  end

  def content
    content_array =[]
    @@all.each do |i|
      content_array << i.content
    end
    return content_array
  end
end
