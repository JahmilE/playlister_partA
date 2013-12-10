class Genre

  attr_accessor :name, :artists, :songs
      @@genres = []
    def initialize
      @name=" "
      @artists= []
      @songs= []
      @@genres << self #useful for counting how many objects/instances of the genre class were made
    end

    def self.reset_genres # or Genre.reset_genres
    @@genres = []
    end 

    def self.all #(how to create class method)
      @@genres
    end

    def add_artist(artist)
      self.artists << artist
    end

    def add_song(song)
      self.songs << song
    end

  end

  

# #it 'A genre has many songs' do
#     genre = Genre.new.tap{|g| g.name = 'rap'} 
#     [1,2].each do #loop twice and each time create a new song instance and for each instance set the genre to the genre object "Rap"
#       song = Song.new
#       song.genre = genre
#     end

#     genre.songs.count.should eq(2)
#   end

# genre.artists.count.should eq(2) #it's looking for 2 artist objects in the array. g1.artists returns []