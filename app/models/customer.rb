class Customer

  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.each.find do |customer_object|
      customer_object.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer_object|
      customer_object.first_name == name
    end
  end

  def self.all_names
    @@all.collect do |customer_object|
      customer_object.full_name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def restaurants
    x = self.reviews.collect do |review_object|
      review_object.restaurant
    end
    x.uniq
  end

  def reviews
    Review.all.select do |review_object|
      review_object.customer == self
    end
  end

  def num_reviews
    self.reviews.count
  end

end
