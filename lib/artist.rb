class Artist
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.find_all {|x| x.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.collect {|x| x.genre}.uniq
    end


end
