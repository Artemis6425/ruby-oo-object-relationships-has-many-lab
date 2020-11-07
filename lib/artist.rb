class Artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name
    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(song)
        temp = Song.new(song)
        temp.artist = self
    end
    def self.song_count
        Song.all.count
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
end