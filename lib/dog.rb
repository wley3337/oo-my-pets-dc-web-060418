require "pry"
require_relative "./fish"
require_relative "./cat"
require_relative "./owner"



class Dog

  attr_accessor :owner, :mood
  attr_reader :name, :species

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @species = "dog"
    @mood = "nervous"
    self.class.all << self
  end



end
