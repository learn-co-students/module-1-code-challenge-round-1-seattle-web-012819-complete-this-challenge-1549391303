require "pry"

class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name.downcase == name.downcase
    end
  end

  def customers
    arr = Review.all.select do |rev|
      rev.restaurant == self
    end
    arr2 = arr.collect do |rev|
      rev.customer
    end
    arr2.uniq
  end

  def reviews
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def average_star_rating
    total = 0

    arr = Review.all.select do |rev|
      rev.restaurant == self
    end

    count = arr.size

    arr.each do |element|
      total += element.rating
    end

    total/count
  end

  def longest_review
    arr = Review.all.select do |rev|
      rev.restaurant == self
    end

    longest_rev = arr[0]

    arr.each do |element|
      if element.content.length > longest_rev.content.length
        longest_rev = element
      end
    end
    longest_rev
  end
end
