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

  # should return an array of all of the customer full names
  def self.all_names
    result = []
    all.self.each do |cust|
      result << cust
    end
    result
  end


end # end of class
