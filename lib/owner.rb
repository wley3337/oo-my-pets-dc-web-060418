require "pry"
require_relative "./fish"
require_relative "./dog"
require_relative "./cat"
require_relative "./owner"



class Owner
  # code goes here
  attr_accessor :name, :pets, :fishes, :cats, :dogs
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :cats => [], :dogs => []}
    self.class.all << self
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def say_species
    "I am a #{self.species}."
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end


  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |pet_type, pet_array|
      pet_array.each {|pet| pet.mood = "nervous"}
      self.pets[pet_type].clear
    end
  end

  def list_pets
  "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end
end
