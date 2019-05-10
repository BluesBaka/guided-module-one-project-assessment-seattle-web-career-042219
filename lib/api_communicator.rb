# require 'rest-client'
require 'json'
require 'pry'



# def helper_get_character_films(results, character_name)
#   character_films = []
#   results.each do |character|
#     if character["name"].downcase == character_name
#       character_films = character["films"]
#     end
#   end
#   character_films
# end
def get_questions_answers_from_api
  questions_hash = JSON.parse(RestClient.get("https://opentdb.com/api.php?amount=5&type=multiple"))
  results = questions_hash["results"]
  results.collect do |result| 
    #result['question'] can move this line into create
    Question.create(question: result['question'],
      correct_answer: result['correct_answer']
      )
    #Question.create(correct_answer: result['correct_answer'])


  end
end

#Users.create(first_name: name)

# def get_character_movies_from_api(character_name)
#   #make the web request
#
#   # character_films = helper_get_character_films(results, character_name)
#   # character_films.map do |request|
#   #   JSON.parse(RestClient.get(request))
#   # end
# end


  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.


# def print_questions(films)
#   # some iteration magic and puts out the movies in a nice list
#   films.each do |film|
#     puts "Star Wars #{film["title"]}, Episode #{film["episode_id"]}"
#     puts "Directed by #{film["director"]}, Produced by #{film["producer"]}"
#     puts "Release date: #{film["release_date"]}"
#     puts
#   end
# end

def show_question
  counter = 0
  question_id = Question.first.id
  rec_id = question_id + counter
  #   while counter < 5 do
  question = Question.find(rec_id).question
      puts question
      puts ""
      puts ""
   show_answers(rec_id,counter)   
   counter = counter + 1
  #  #   binding.pry
    
end

def show_answers(rec_id,counter)
  
  correct_answer = Question.find(rec_id).correct_answer
  puts "#{counter + 1}. #{correct_answer}"

  user_answer = gets.chomp.downcase
  #counter = counter + 1
end 


## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
