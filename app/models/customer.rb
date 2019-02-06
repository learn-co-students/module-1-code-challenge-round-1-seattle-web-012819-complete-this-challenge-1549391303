class Customer
  attr_accessor :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.select do |customer|
       customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    # first_name_array = []
    # @@all.each do |find_first_name|
    #   if name == find_first_name.first_name
    #     first_name_array << name
    #   end
    # end
    # return first_name_array
    self.all.select do |customer|
       customer.first_name == name
    end
  end

  def self.all_names
    #return self.all
     all_name_array = []
     @@all.each do |customer|
     all_name_array << customer.full_name
     end
     return all_name_array
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_review
    Review.all.count do |review|
      review.customer == self
    end
  end

  def restaurants
    customer_array = []
    Review.all.each do |review|
      if review.customer == self
        customer_array << review.restaurant
      end
   end
   return customer_array.uniq
  end
end #end of class
