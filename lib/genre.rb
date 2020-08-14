class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << @name
  end

  def self.all
    @@all
  end

  def songs
    Song.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end
end
