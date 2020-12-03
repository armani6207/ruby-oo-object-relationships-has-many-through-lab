class Genre
    attr_reader :name

    @@all = []
    @songs = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.find_all{|x| x.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        songs.collect {|x| x.artist}.uniq
    end
end