class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all{|song| song.genre == self}
  end

  def add_song(song)
    self.songs << song
    # @songs << song
  end

  def artists
    @songs.all.select do |song|
      song.artist == self
    end
  end


end
