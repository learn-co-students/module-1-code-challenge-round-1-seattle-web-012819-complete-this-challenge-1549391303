class Review
  attr_accessor :content, :rating
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, content, rating)
    #in case rating is above 5 or below 1
    #ideally create helper method to do this.  Then you can call helper method in a
    #customer setter for this instance variable. Ran out of time :)
    if rating > 5
      @rating = 5
    elsif rating < 1
      @rating = 1
    else
      @rating = rating
    end
    @customer = customer
    @restaurant = restaurant
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end

end
