class Hero

  @@all = []

  attr_accessor :name, :power, :bio

  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @bio = hash[:bio]
    @@all << self
  end

  def self.all
    @@all
  end
end