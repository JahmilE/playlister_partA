require 'pry'
class Artist

  attr_accessor :name, :songs, :genres
    @@artists = []
    def initialize 
      @name= name
      @songs = []
      @genres = []
      @@artists << self #useful for counting how many objects/instances of the artist class were made

    end

    def self.all #(how to create class method)
      @@artists
    end

    def self.count
      @@artists.length  #can use .count, .length or .size
    end

    def songs_count # songs are a child/attribute of an instance of the Artist class which is why we say self.songs (all the songs that instance/artist object made)
      self.songs.length
    end

    def add_song(song)
      self.songs << song
      self.genres << song.genre
      if song.genre.is_a?(Genre) && !song.genre.artists.include?(self) # if the new artist is already in the genre.artists array- don't add them
  
        song.genre.add_artist(self)
      end
    end



#     # setter
#     def name=()
#     end
#     #artist.name = "Adele"
#     #artist.name=("Adele")

#     #getter
#     def name
#       @name
#     end
#     artist.name
#     #=> "Adele"

#     def artist=()
#     end

#     def artist
#       @artist
#     end

#     def genre=()
#     end

#     def genre
#       @genre
#     end

  def self.reset_artists # or Artist.reset_artist
    @@artists = []
  end 
 
#(how to use the setter method) instance of the Artist class . attributes= the thing you're trying to set it to
end


