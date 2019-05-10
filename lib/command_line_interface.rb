
def welcome
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts "                                           Welcome to Triva HQ!!!"
  puts ""
  puts "                                           About the game..."

  puts "                                           You'll be presented with 5 questions to answer per round"
  puts "                                           Your correct responses will be tabulated"
  puts ""
  puts ""
  puts ""
end

def process_user #check if existing user, else create new record
  puts "                                           What's your name?"
  name = gets.chomp.downcase
  if User.find_by(first_name: name)
      puts "                                           Welcome back #{name}! You have a grand total of #{User.find_by(first_name: name).total_score} points!!"
      puts ""
      puts ""
    else
      User.create(first_name: name)
      user_id = User.find_by(first_name: name).id
    #  binding.pry
  end
    user_id = User.find_by(first_name: name).id
    # sess_id = Round.find_by(user_id: user_id).session_id
    # if sess_id != nil
    #   binding.pry
    # else
    #   #session_id = session_id + 1
    # end
end

def wanna_play(user_id)
  answer= false
  while answer != true
    puts "                                           Wanna play?(Y/N)"
    continue = gets.chomp.downcase
    case continue
    when "y"
      counter = 0
      while counter < 5
        show_question(user_id)
        counter = counter + 1
      end
      wanna_play(user_id)
      #answer = true
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
  puts "                                              Sorry, I don't understand, try again'"
  puts ""
end
