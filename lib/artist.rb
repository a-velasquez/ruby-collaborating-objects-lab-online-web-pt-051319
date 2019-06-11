class Artist 
  attr_accessor :name
  attr_reader :songs
  @@all = [] 

  def initialize(name)  #initialize with name for the artist, accepts a name for the artist 
    @name = name        #sets the artist name 
    @songs = []   
  end
  
  def add_song(song)
     @songs << song     #keeps track of an artist's songs 
  end
  
  def save
    @@all << self       #adds the artist instance to the @@all class variable 
  end
  
  def self.all          #works w/#save to add artist instance to @@all class variable and return it 
    @@all
  end
  
  def self.find_or_create_by_name(name)
     self.all.detect {|artist| artist.name == name} || Artist.new(name) #iterates through @@all and detects if an artists name matches name given in argument. Or if false creates new instance of artist class. 
  end 
  
  def print_songs 
    @songs.each {|song| puts song.name}  #prints all of the artist's songs. 
  end
    
end 
