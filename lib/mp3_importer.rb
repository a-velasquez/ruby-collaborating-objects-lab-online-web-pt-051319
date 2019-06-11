class MP3Importer
  attr_accessor :path, :artist 
  
  #accepts a file path to parse mp3 files from 
  def initialize(filename)
    @path = filename
  end
  
  #loads all the mp3 files in the path directory
  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end
  
  #imports the files into the library by creating songs from a filename
  
  def import
    files.each {|filename| Song.new_by_filename}
  end 
  
end