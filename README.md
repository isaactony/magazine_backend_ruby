# magazine_backend_ruby


- This App is is a Ruby application with the following classes:

The Author class has an initialize method that takes a name argument and sets an instance variable @name to that value. It has name method that returns the name of the author, as well as articles and magazines methods that return arrays of articles and magazines, respectively, that the author has contributed to. It also has an add_article method that takes a magazine and title argument, creates a new Article object with the given author, magazine, and title, and associates the article with the author and magazine.

The Magazine class has an initialize method that takes name and category arguments and sets instance variables @name and @category to those values. It also has name and category methods that return the name and category of the magazine, respectively. The class also has a class-level all method that returns an array of all Magazine objects that have been created, as well as a find_by_name method that takes a string argument and returns the first Magazine object with that name. It also has a contributors method that returns an array of Author objects who have written for that magazine. Finally, the class has an article_titles method that returns an array of strings representing the titles of all articles written for that magazine, and a contributing_authors method that returns an array of Author objects who have written more than 2 articles for the magazine.

The Article class has an initialize method that takes author, magazine, and title arguments and sets instance variables @author, @magazine, and @title to those values. It also has title, author, and magazine methods that return the title, author, and magazine of the article, respectively.

Together, these classes and their methods allow us to model relationships between authors, magazines, and articles, and retrieve information about them. The classes can be used to create and manipulate objects in Ruby, and can also be used with a database and ORM like ActiveRecord to persist and retrieve data.



# Development requirements
- Ruby
- r spec

11
# To get the code,

- fork and clone the project to your to your local machine.
- Navigate to this folder containing this code 
- open the code with VSCode using code .command
- run bundle install 
- run bin/run command to start the application

 
# Technology used
- Ruby




# License:
MIT License.

# Authors

- Isaac Tonyloi

