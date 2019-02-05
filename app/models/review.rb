class Review
  @@all = []
  attr_accessor :rate, :review
  attr_reader :name, :full_name, :date


  def initialize(full_name, name, date, rate, review)
    @name = name
    @full_name = full_name
    @date = date
    @rate = rate
    @review = review

    @@all << self
  end

  def customer
    self.full_name
  end

  def restaurant
    self.name
  end

  def rating
    self.rate
  end

  def content
    self.review
  end

  def self.all
    @@all
  end
end
