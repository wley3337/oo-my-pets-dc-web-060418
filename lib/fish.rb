require "pry"
require_relative "./dog"
require_relative "./cat"
require_relative "./owner"

class Fish

  attr_accessor :owner, :mood
  attr_reader :name, :species

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @species = "fish"
    @mood = "nervous"
    self.class.all << self
  end


end
