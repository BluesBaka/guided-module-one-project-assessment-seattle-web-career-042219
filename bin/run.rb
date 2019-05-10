require_relative '../config/environment'
require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil


system('clear')
welcome
user_id = process_user
wanna_play(user_id)
