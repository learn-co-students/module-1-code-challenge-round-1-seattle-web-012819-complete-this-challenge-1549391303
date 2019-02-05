class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def add_review(restaurant,content,rating)
    Review.new(restaurant,self,content,rating)
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    review_count = 0
    self.reviews.each do |review|
      review_count += 1
    end
    review_count
  end

  def restaurants
    array = self.reviews.map {|review| review.restaurant}
    array.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    first_names = []
    self.all.each do |customer|
      if customer.first_name == name
        first_names << customer
      end
    end
    first_names
  end

  def self.all_names
    all_names = []
    self.all.each do |customer|
      all_names << customer.full_name
    end
    all_names
  end
end #end of Customer class
