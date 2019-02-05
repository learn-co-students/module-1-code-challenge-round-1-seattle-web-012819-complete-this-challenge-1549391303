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

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.select { |c| c.first_name == name.split(" ")[0] && c.last_name == name.split(" ")[1] }.first
  end

  def self.find_all_by_first_name(name)
    self.all.select { |c| c.first_name == name}
  end

  def self.all_names
    self.all.map { |c| c.first_name+c.last_name }
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    n = Review.all.select { |rv| rv.customer == self }.length
    !n ? 0 : n
  end

  def restaurants
    Review.all.select { |rv| rv.customer == self }.map { |rv| rv.restaurant }.uniq
  end
end
