class Article
  #cannot be changed after initialization
  attr_reader :author, :magazine, :title

  @@all = []

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end
  #returns
  #return an array of all article instances as array
  def self.all
    @@all.dup.freeze
  end
end
