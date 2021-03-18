require 'pry'

class Artist
attr_accessor :name

@@song_count = 0


    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self}  
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end    

    def self.song_count
        @@song_count = Song.all.count {|songs| songs.artist = self}
    end

end