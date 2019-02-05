class Customer
  attr_accessor :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def add_review(rest, content, rating)
    Review.new(self, rest, rating, content)
  end

  def num_reviews
    count  = Review.all.select do |rev|
            rev.customer == self
      end
    count.length
  end

  def restaurants
    arr = []
    Review.all.each do |rev|
      if rev.customer == self
        arr << rev.restaurant
      else end
      end
      arr.uniq
  end

  def self.find_by_name(name)
    Customer.all.find do |cust|
      cust.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |cust|
      cust.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |cust|
      cust.full_name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end
end

