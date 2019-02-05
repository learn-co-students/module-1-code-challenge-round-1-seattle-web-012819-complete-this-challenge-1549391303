class Customer
  @@all = []
  attr_reader :full_name, :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|x| x.full_name == name}
  end

   def self.find_by_first_name(name)
    @@all.select {|x| x.first_name == name}
  end

  def self.all_names
    @@all.collect {|x| x.full_name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
