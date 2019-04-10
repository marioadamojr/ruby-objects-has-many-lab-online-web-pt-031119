class Artist
  attr_accessor :name
  @@songs = []

  def initialize(name)
    @name=name
    @songs=[]
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@songs << song
  end

  def add_song_by_name(song_name)
    name = Song.new(song_name)
    name.artist = self
    @songs << name
    @@songs << name
  end

  def self.song_count
    @@songs.count
  end
end
