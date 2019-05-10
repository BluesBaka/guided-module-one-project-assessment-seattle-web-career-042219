# require 'rest-client'
require 'json'
require 'pry'


def get_questions_answers_from_api
  questions_hash = JSON.parse(RestClient.get("https://opentdb.com/api.php?amount=30&type=multiple"))
  results = questions_hash["results"]

  results.collect do |result|
      result['incorrect_answers'][0]
      choice_b = result['incorrect_answers'][1]
      choice_c = result['incorrect_answers'][2]
      Question.create(
        question: result['question'],
        correct_answer: result['correct_answer'],
        incorrect_answer_1: result['incorrect_answers'][0],
        incorrect_answer_2: result['incorrect_answers'][1],
        incorrect_answer_3: result['incorrect_answers'][2]
      )
  end
end

def show_question(user_id)
  get_questions_answers_from_api
  #get a random Record
  ids = Question.pluck(:id) #get all ids
  random_id = Question.find(ids.sample).id #grab ramdom Record
  Round.create(question_id: random_id, user_id: user_id) #record q_id to db
  question = Question.find(ids.sample).question
      system('clear')
      puts ""
      puts ""
      puts ""
      puts ""
      puts ""
      puts ""
      puts ""
      puts ""
      puts "               #{question}"
      puts ""
      puts ""
      puts ""
      puts ""
      puts ""
      show_answers(random_id)
end

 def show_answers(random_id)
   #need to track id in round
   #need to randomize presentation of answers
   correct_answer = Question.find(random_id).correct_answer
   incorrect_answer_1 = Question.find(random_id).incorrect_answer_1
   incorrect_answer_2 = Question.find(random_id).incorrect_answer_2
   incorrect_answer_3 = Question.find(random_id).incorrect_answer_3

   puts "              A. #{correct_answer}"
   puts "              B. #{incorrect_answer_1}"
   puts "              C. #{incorrect_answer_2}"
   puts "              D. #{incorrect_answer_3}"

   process_answers
 end

 def process_answers
  # grand_total = User.find_by(first_name: laura).total_score
   #add error checking for invalid responses
   session_tally = 0
   user_answer = gets.chomp.upcase
   if user_answer.include? "A"
     puts ""
     puts ""
     puts ""
     puts ""
     puts "           WooHoo! You got it right!"
    # session_tally = session_tally + 1
     puts ""
     puts ""
  #   puts "           Total correct answers this session: #{session_tally}"
     sleep(2)
     puts ""
     puts ""
     #grand_total = grand_total + session_tally
     #puts "            Your grand total for all time is #{grand_total}"
   else
     puts ""
     puts ""
     puts ""
     puts ""
     puts "           Close, but no cigar.  Better luck next time!"
     puts ""
     puts ""
     puts ""
     wanna_play
   end
 end
