require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new
    self.all << song 
    song 
  end 
  
  def self.new_by_name(name)
    song = Song.new
    song.name = name 
    self.all << song 
    song 
  end 
  
  def self.create_by_name(name)
    song = Song.new
    song.name = name 
    self.all << song 
    song 
  end 
  
  def self.find_by_name(name)
    self.all.find do |song|
      song.name == name 
    end 
  end 

  def self.find_or_create_by_name(name)
    if Song.find_by_name(name) 
      Song.find_by_name(name)
    else 
      Song.create_by_name(name)
    end 
  end 
  
  def self.alphabetical
   sorted = self.all.sort_by do |song|
     song 
   end 
   sorted 
   
  end 

  

end
