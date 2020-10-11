class Artist

    attr_accessor :name 
    attr_reader :height, :hit_song

    def initialize(name, height, hit_song)
        @name = name
        @height = height 
        @hit_song = hit_song 
    end

    def songs 
        #find all songs artist has
        Song.all.select {|song| song.artist = self}
    end

    def genres
        #all genre's artist has 
        songs.map {|song| song.genre}
    end
end # end of artist class 