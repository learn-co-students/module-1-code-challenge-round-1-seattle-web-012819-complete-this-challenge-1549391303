class Customer
  attr_accessor :first_name, :last_name
  @@all_customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all_customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all_customers
  end

  def self.find_by_name(full_name)
    Customer.all.find { |cust| "#{cust.first_name} #{cust.last_name}" == full_name }
  end

  def self.find_all_by_first_name(name)
    Customer.all.select { |cust| cust.first_name == name }
  end

  def self.all_names
    Customer.all.map { |cust| "#{cust.first_name} #{cust.last_name}" }
  end

  def add_review(restaurant, content, rating)
    Review.new(content, self, restaurant, rating)
  end

  def num_reviews
    Review.all.count { |rev| rev.customer == self }
  end

  def restaurants
    Review.all.each_with_object([]) { |rev, a| a << rev.restaurant if rev.customer == self }.uniq
  end
end
