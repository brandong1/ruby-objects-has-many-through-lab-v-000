class Genre

    attr_accessor :genre, :song

  @@all = []

  def self.all
    @@all
  end

  def new_song(name, artist)
    name.genre = self
  end

end


class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.all.select do |song|
      song.artist == self
    end
  end


end
