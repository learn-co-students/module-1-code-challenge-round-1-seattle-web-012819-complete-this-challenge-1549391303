class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  #should return all of the customer instances - check
  def self.all
    @@all
  end

  #given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    name_array = name.split
    Customer.all.each do |customer|
      if customer.first_name == name_array[0] && customer.last_name == name_array[1]
        return customer
      end
    end
  end

  #given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    #seach through every instance of Customer and map a new array with instance of customer with a first name matching what is passed in
    Customer.all.map {|customer| customer.first_name == name}
    end
  end

  #should return an array of all the customer full names
  def self.all_names
    new_array = []
    Customer.all.each do |customer|
      new_array << customer.full_name
    end
    new_array
  end

  #provided method
  def full_name
    "#{first_name} #{last_name}"
  end

  #given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    Review.new(self,restaurant,rating,content)
  end

  #Returns the total number of reviews that a customer has authored
  def num_reviews
    count = 0
    Review.all.select do |review|
      if review.customer == self
        count += 1
      end
    end
    return count
  end

  #Returns a unique array of all restaurants a customer has reviewed
  def restaurant
    new_array = []
    Review.all.select do |review|
      if review.customer == self
        new_array << review.restaurant
      end
    end
    return new_array
  end

end
