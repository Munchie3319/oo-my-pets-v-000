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

   def cats
     Cat.all.select{|item| item.owner == self}
   end

   def dogs
     Dog.all.select{|item| item.owner == self}
   end

   def buy_cat(name)
     @cats << Cat.new(name, self)
   end

   def buy_dog(name)
     @dogs << Dog.new(name, self)
   end

   def walk_dogs
     self.dogs.each do |item|
       item.mood = "happy"
     end
end
