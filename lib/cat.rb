require "pry"
require_relative "./fish"
require_relative "./dog"
require_relative "./owner"

class Cat
  attr_accessor :owner, :mood
  attr_reader :name, :species

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @species = "cat"
    @mood = "nervous"
    self.class.all << self
  end

end
