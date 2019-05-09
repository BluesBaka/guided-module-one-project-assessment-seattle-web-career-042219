#require 'rest-client'
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
  results.each do |key, value|
    if key = "question"
      puts value
      binding.pry
    end
  end
  #binding.pry
end

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

def show_questions
  questions = get_questions_answers_from_api
  #puts results
end


## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
