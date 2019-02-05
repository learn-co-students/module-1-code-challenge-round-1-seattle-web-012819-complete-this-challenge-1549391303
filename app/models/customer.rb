class Customer
  attr_accessor :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all.append(self)
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    first_name = full_name.split(" ").first
    last_name = full_name.split(" ").last
    all.select do |person|
      if person.first_name == first_name && person.last_name == last_name
        self
      end
    end
  end

  def self.find_all_by_first_name(name)
    all.select {|person| person.first_name == name}
  end

  def self.all_names
    all.map {|person| person.first_name + " " + person.last_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    number_of_reviews = []
    Review.all.select do |review|
      if review.customer.full_name == self.full_name
        number_of_reviews << review
      end
    end
    number_of_reviews.count
  end

  def restaurants
    restaurants_visited = []
    Review.all.select do |review|
      if review.customer.full_name == self.full_name
        restaurants_visited << review.restaurant.name
      end
    end
    restaurants_visited.uniq
  end
end
