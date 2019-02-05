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

  def self.find_by_name(rest_name)
    @@all.each do |find_name|
      if rest_name == find_name.name
        return rest_name
      end
    end
  end

end
