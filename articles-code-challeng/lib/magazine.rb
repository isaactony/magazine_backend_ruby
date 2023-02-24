class Magazine
    #name and catergory can be changed thereafter
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @articles = []
      @@all << self
    end
    
    #return all magazine instances as a shallow copy 
    def self.all
      @@all.dup.freeze
    end
    #return the name of the magazine 
    def name=(new_name)
      @name = new_name
    end
    #return the category of the magazine
    def category=(new_category)
      @category = new_category
    end
  
    def add_article(article)
      @articles << article
    end
    # return an array strings of the titles of all articles written for that magazine
    def article_titles
      @articles.map(&:title)
    end

    #Returns an array of Author instances who have written for this magazine
    def contributors
      @articles.map(&:author).uniq
    end
    #given a string of magazine's name, 
    #this method returns the first magazine object that matches
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
    
    #an array of authors who have written more than 2 articles for the magazine
    def contributing_authors
      contributors.select { |author| author.articles.count >= 2 }
    end
  end