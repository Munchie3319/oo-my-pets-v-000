class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end

  def self.all
    @@all
  end
end
