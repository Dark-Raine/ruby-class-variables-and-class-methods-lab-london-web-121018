require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            hash[genre] = @@genres.count(genre)
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            hash[artist] = @@artists.count(artist)
        end
        hash
    end


end