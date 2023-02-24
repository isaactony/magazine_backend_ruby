class Author
  #name cannot be changed after initialization using att-reader
  attr_reader :name
  
  def initialize(name)
    @name = name
    @articles = []
  end
  
  def name
    @name = name
  end
  #return an array of article instances 
  def articles
    @articles.dup.freeze
  end
 #returning and array of unique magazine instances 
  def magazines
    @articles.map(&:magazine).uniq
  end

  def add_article(magazine, title)
    #creates a new Article instance and associates it with that author and that magazine.
    article = Article.new(self, magazine, title)
    @articles << article
    magazine.add_article(article)
    article
  end
  # returning unique array of strings with categories of the magazines the author has contributed to
  def topic_areas
    # passing the category method as a block to the map method.
    magazines.map(&:category).uniq
  end
end