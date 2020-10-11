class Genre

    def initialize(name)
        @name = name 
    end

    def songs 
        #find all songs in this genre
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.map {|song| song.artist}
    end
end #end of genre class