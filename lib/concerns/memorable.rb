module Memorable
  @@all
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.length
  
end