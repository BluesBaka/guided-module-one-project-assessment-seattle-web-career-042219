
def welcome
  puts ""
  puts ""
  puts ""
  puts ""
  puts "                  Welcome to Triva HQ!!!"
  puts ""
  puts "                  About the game..."

  puts "                  You'll be presented with 5 questions to answer per round"
  puts "                  Your correct responses will be tabulated"
  puts "                  You'll be invited to continue at the end of each round"
  puts "                  'quit' quits the game"
  puts ""
end

def wanna_play
  answer= false
  while answer != true
    puts "                  Wanna play?(y or n or q)"
    continue = gets.chomp.downcase
    case continue
    when "y"
      show_questions_and_answers
      answer = true
    when "n"
      exit
      answer = true
    when "q"
      exit
      answer = true
    else
      try_again
    end
  end
end

def try_again
  puts ""
  puts "Sorry, I don't understand, try again'"
  puts ""
  #caller
end

def test_caller_meth
  puts "here's my test in caller_meth"
  try_again
end

def process_user #check if existing user, else create new record
  puts "What's your name?"
  name = gets.chomp.downcase
  Users.find_by(first_name: name) ? true : false
    if false
      Users.create(first_name: name)
    else
      puts "Welcome back #{name}!"
    end
end