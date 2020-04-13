class Owner
  # code goes here
  attr_reader :name

  @@all = [ ]

  @@all_pets = [ ]

  def initialize(name)
    @name = name
    @cats = []
    @dogs = []
    @@all << self
  end

   def self.all 
     @@all 
   end

   def self.count
     @@all.length
   end

   def self.reset_all
     @all.clear
   end

   def species(species = "human")
     species
   end

   def say_species
     "I am a #{self.species}."
   end
   
end