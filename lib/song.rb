class Song
    @@all = []
    def initialize(name="name")
        @name = name
        @artist
        @@all << self
    end
    attr_accessor :name, :artist, :artist_name
    def self.all
        @@all
    end
    def artist_name
        artist.name if artist
    end
end