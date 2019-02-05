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

  def self.find_by_name(name)

    @@all.each do |ful_name|
      full_name = ful_name.first_name << ful_name.last_name #full_name is an empty string
      if full_name == name
        full_name
      end
    end
  end

  def self.find_all_by_first_name(name)
    first_name_array = []
    @@all.each do |find_first_name|
      if name == find_first_name.first_name
        first_name_array << name
      end
    end
    return first_name_array
  end

  def self.all_names
    return self.all
    # all_name_array = []
    # @@all.each do |find_names|
    #   all_name_array << find_names
    # end
    # return all_name_array
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_review
    total = []
    Review.all.each do |i|
      total << i
    end.uniq
  end
end #end of class
