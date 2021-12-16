class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 #keep track of how many songs
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq #only want unique genres so using .uniq method
  end

  def self.artists
    @@artists.uniq 
  end

  def self.genre_count
    genre_count = {}

    @@genres.each do |g|
      if genre_count[g] #if it exists
        genre_count[g] += 1
      else
        genre_count[g] = 1
      end
    end

    genre_count

    #tally method
    #@@genres.tally
  end

  def self.artist_count
    artist_count = {}

    @@artists.each do |a|
      if artist_count[a] #if it exists
        artist_count[a] += 1
      else
        artist_count[a] = 1
      end
    end

    artist_count

    #tally method
    #@@artist.tally
  end


end