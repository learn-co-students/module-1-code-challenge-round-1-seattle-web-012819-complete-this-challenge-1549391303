class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      name == customer.full_name
    end
  end

  def self.find_all_by_first_name(name)
    customers = []
    self.all.collect do |customer|
      name == customer.first_name
      customers << customer
    end
    customers
  end
  def self.all_names
    customers = []
    self.all.each do |customer|
      customers << customer.full_name
  end
  customers
end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    aggregate = []
    Review.all.collect do |review|
    review.customer == self
    aggregate << review
    end
    aggregate.count
  end
    
  def restaurants
    aggregate = []
    Review.all.collect do |review|
      review.customer == self
      aggregate << review
      end
      aggregate.uniq
  end
  
end
