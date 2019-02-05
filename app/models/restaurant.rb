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

  def customers 
    reviews.collect do |review|
      review.customer.first_name
  end 
end 

  def reviews 
    Review.all.select do |review|
      if review.restaurant == self 
        review.restaurant 
      end 
  end 
end 

  def average_star_rating #working on this problem but am running out of time 
    reviews = []
    Review.all.select do |review|
      if review.restaurant == self 
        reviews << review.rating# Adds the ratings to a stringn 
        # going to make a total variable that adds ratings then find the avg
    end 
    reviews 
  end 
end  

  def longest_review
    string.split(" ")

  end 

  def self.find_by_name(name)
  end 

end ## End of Restaurant Class 
