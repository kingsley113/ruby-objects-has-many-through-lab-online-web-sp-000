class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << @name
  end

  def all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, genre)
    song.artist = self
  end

  def songs
    Song.select do |artist|
      song.artist == self
    end
  end

  def genres
    songs.collect do |song|
      song.genre
    end
  end
end
