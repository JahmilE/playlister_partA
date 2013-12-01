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


end

