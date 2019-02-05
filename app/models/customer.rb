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

  def self.find_by_name(name)
    first = name.split(" ")[0]
    last = name.split(" ")[1]
    @@all.find do |customer|
      customer.first_name.downcase == first.downcase && customer.last_name.downcase == last.downcase
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name.downcase == name.downcase
    end
  end

  def self.all_names
    @@all.collect do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, rating, content)
  end

  def num_reviews
    arr = Review.all.select do |rev|
      rev.customer == self
    end
    arr.size
  end

  def restaurants
    arr = Review.all.select do |rev|
      rev.customer == self
    end
    arr2 = arr.collect do |rev|
      rev.restaurant
    end
    arr2.uniq
  end
end
