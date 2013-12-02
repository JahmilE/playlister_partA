# class Song #=> creating instances of Song
#   attr_accessor :name, :artist, :genre

#        @@all = [] #=> array to store collection of songs, class variable

#   def initialize
#     @@all << self
#   end

#   def self.get_songs #=> class methods
#     @@all
#   end

#   def self.get_song_name #=> class methods
#     @@all.collect do |song| #=> remember the song. we will use it in the block.
#       song.get_name
#       # song.set_name = "Cool"
#     end

#     # @@all.each_with_index do |index, song|
#     #   puts index + " 1"
#     #   song.get_name
#     # end
# end



class Song

  attr_accessor :name, :genre

    def initialize()
      self.genre.add_song(self) if self.genre.is_a?(Genre)
    end
end

# song1 = Song.new("Peso", "Dance")  
  
# puts song1



