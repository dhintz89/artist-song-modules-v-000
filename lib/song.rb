require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  

  extend Memorable
  extend Findable
  include Paramable
  
  @@songs = []

  def initialize
    # refactor @@songs << self
    self.class.all << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # keeping refactored code for reference:
  # def self.reset_all
  #   @@songs.clear
  # end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  # def self.count
  #   self.all.count
  # end

  def self.all
    @@songs
  end
end
