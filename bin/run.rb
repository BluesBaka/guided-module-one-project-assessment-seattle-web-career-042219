require_relative '../config/environment'
require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"

welcome
user_response = get_answer_from_user
#show_questions_and_answers(user_response)
show_questions_and_answers
