# class Song
#   attr_accessor :name, :artist

#   def initialize(name)
#     @name = name
#   end

#   def artist=(artist)
#     @artist = artist
#   end
  
#   def Song.new_by_filename(filename)
#     split_name = filename.split(" - ")
#     songname = split_name[1]
#     artist = split_name[0]
#     song = Song.new(songname)
#     song.artist = Artist.new(artist)
#     song.artist.add_song(songname)
#     return song 
#   end  
  
   
# end 

class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
 
  def self.new_by_filename(file) 
   title = file.split(" - ")[1]
   new_song = self.new(title)
   new_song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
   new_song.artist.add_song(new_song)
   new_song
  end  

end

