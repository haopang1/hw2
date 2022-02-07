# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all;
Person.destroy_all;
Role.destroy_all;

#puts Movie.all.count

# Generate models and tables, according to the domain model
# TODO!
    # 1 create Movies model - code "rails generate model Movies" in TERMINAL; Update app/model/movie.rb; 
    # 2 create People model - code "rails generate model People" in TERMINAL; Update app/model/person.rb
    # 3 create Roles model - code "rails generate model Roles" in TERMINAL; Update app/model/role.rb; 
    # run it to update my model setting with command "rails db:migrate"

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# Insert Person data

    person1 = Person.new
    person1.name = "Christopher Nolan"
    person1.save

    person2 = Person.new
    person2.name = "Christian Bale"
    person2.save

    person3 = Person.new
    person3.name = "Michael Caine"
    person3.save

    person4 = Person.new
    person4.name = "Liam Neeson"
    person4.save

    person5 = Person.new
    person5.name = "Katie Holmes"
    person5.save

    person6 = Person.new
    person6.name = "Gary Oldman"
    person6.save

    person7 = Person.new
    person7.name = "Heath Ledger"
    person7.save

    person8 = Person.new
    person8.name = "Aaron Eckhart"
    person8.save

    person9 = Person.new
    person9.name = "Maggie Gyllenhaal"
    person9.save

    person10 = Person.new
    person10.name = "Tom Hardy"
    person10.save

    person11 = Person.new
    person11.name = "Joseph Gordon-Levitt"
    person11.save

    person12 = Person.new
    person12.name = "Anne Hathaway"
    person12.save

    # puts Person.all.count
    # puts Person.all.inspect
    # puts director= Person.where({name: "Christopher Nolan"})[0] # need to pick up one row otherwise get data format problem 
    # puts director.id
    # puts director.read_attribute(:id)
    # puts person1.id

# Insert movie date 
    values = { title: "Batman Begins", year_released: 2005, rated: "PG-13", person_id: person1.id }
    m1 = Movie.new(values)
    m1.save
    # puts Movie.all.count
    values = { title: "The Dark Knight", year_released: 2008, rated: "PG-13", person_id: person1.id }
    m2 = Movie.new(values)
    m2.save
    # puts Movie.all.count
    values = { title: "The Dark Knight Rises", year_released: 2012, rated: "PG-13", person_id: person1.id}
    m3 = Movie.new(values)
    m3.save
    # puts Movie.all.count
    # testmovie=Movie.where({year_released: 2012})
    # puts testmovie.inspect 
    # puts m1.id
    # puts Movie.all.inspect 

    r1 = Role.new
    r1.movie_id = m1.id
    r1.person_id =person2.id
    r1.character_name="Bruce Wayne"
    r1.save

    r2 = Role.new
    r2.movie_id = m1.id
    r2.person_id =person3.id
    r2.character_name="Alfred"
    r2.save

    r3 = Role.new
    r3.movie_id = m1.id
    r3.person_id =person4.id
    r3.character_name="Ra's Al Ghul"
    r3.save

    r4 = Role.new
    r4.movie_id = m1.id
    r4.person_id =person5.id
    r4.character_name="Rachel Dawes"
    r4.save

    r5 = Role.new
    r5.movie_id = m1.id
    r5.person_id =person6.id
    r5.character_name="Commissioner Gordon"
    r5.save

    puts Role.all.count
    puts Role.all.inspect 



    
# INSERT INTO roles (movie_id, person_id, character_name) VALUES (1, 2, "Bruce Wayne");
# INSERT INTO roles (movie_id, person_id, character_name) VALUES (1, 3, "Alfred");
# INSERT INTO roles (movie_id, person_id, character_name) VALUES (1, 4, "Ra's Al Ghul");
# INSERT INTO roles (movie_id, person_id, character_name) VALUES (1, 5, "Rachel Dawes");
# INSERT INTO roles (movie_id, person_id, character_name) VALUES (1, 6, "Commissioner Gordon");

# Insert Roles data


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!
    # puts Movie.all.inspect

    movies = Movie.all
    for movie in movies 
        director = Person.where({id: movie.person_id})[0]
        puts "#{movie.title}  #{movie.year_released}     #{movie.rated}   #{director.read_attribute(:name)}"
    end 

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

