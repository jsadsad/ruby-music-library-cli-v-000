class Artist
  extend Concerns::Findable
  extend Persistable::ClassMethods
  include Persistable::InstanceMethods
  
  attr_accessor :name
  attr_reader :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.create(name)
    new(name).tap{|x| x.save}
  end
  
  def self.destroy_all
    all.clear
  end
  
  def add_song(song)
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
  end
  
  def genres
    songs.collect{|x| x.genre}.uniq
  end
end