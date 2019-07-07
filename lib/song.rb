class Song
  attr_accessor :name, :artist
  # attr_reader :artist

  @@all = []

  def initialize(name, artist = Artist)
    @name = name
    @artist = artist

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
    song = self.new(name)
    all << song
    song
  end

  # def artist=(artist)
  #     @artist = artist
  #     # add_song
  # end
end
