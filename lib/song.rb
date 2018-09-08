require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  

  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  
  @@songs = []

  # def initialize
  #   # refactor @@songs << self to abstract for module
  #   # self.class.all << self
  # end

  # keeping refactored code for reference:
  
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

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
