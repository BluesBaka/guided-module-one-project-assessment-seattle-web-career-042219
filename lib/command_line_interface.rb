
def welcome
  puts "Welcome to Triva HQ!!!"
  puts ""
  puts "About the game..."
  puts "                  You'll be presented with 5 questions to answer per round"
  puts "                  Your correct responses will be tabulated"
  puts "                  You'll be invited to continue at the end of each round"
  puts "                  'quit' quits the game"
end

def get_answer_from_user
  #puts "Wanna play?"
  #continue = gets.chomp.downcase
  puts "Please enter the number of the correct answer"
  response = gets.chomp.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end
