require 'pry'

class Song

    attr_accessor :name, :artist, :genre
 
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@genres << self.genre
        @@artists << self.artist
    end
    
    def self.count
        @@count
    end

    def self.genres
        genre_list = []
        @@genres.map { |genre| 
        if (!genre_list.include? genre)
            genre_list.push(genre)
        end}
        genre_list
    end

    def self.artists
        artist_list = []
        @@artists.map { |artist| 
        if (!artist_list.include? artist)
            artist_list.push(artist)
        end}
        artist_list
    end

    def self.genre_count
        @@genres.tally
        # binding.pry
    end

    def self.artist_count
        @@artists.tally
    end

end
