require 'bundler'
Bundler.require

#DB = {:conn => SQLite3::Database.new("db/game.db")}

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.db')

require_all 'lib'
