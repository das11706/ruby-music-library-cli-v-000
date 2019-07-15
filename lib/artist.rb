class Artist
  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    all << artist
    artist
  end

  def songs
    @songs
  end

  def add_song(song)
    if !@songs.include?(song)
    @songs << song
    end
    if song.artist != self
    song.artist = self
    end
  end

  def genres
    songs.map { |song| song.genre  }.uniq
    # songs.map(&:genre).uniq
  end
end
