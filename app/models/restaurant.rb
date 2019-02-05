class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.find_by_name(name)
    @@all.find {|x| x.name == name}

  end

  def self.all
    @@all
  end

end
