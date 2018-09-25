class Artist

  attr_accessor :name, :songs, :genre

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    @songs << song
    @genre << genre
    Song.new
    song.artist = self
  end

  def songs
    @@all
  end

  def genres(genre) # iterates over that artist's songs and collects the genre of each song.
    songs.collect {|song| song.genre}

  end

end

# class Artist
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#

#
#   def songs
#     @songs
#   end
#
#   def genres
#     self.songs.collect do |song|
#       song.genre
#     end
#   end
# end
