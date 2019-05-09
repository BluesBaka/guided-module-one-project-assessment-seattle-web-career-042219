class CreateUsers < ActiveRecord::Migration[5.1]

  def change
    create_table :users do |t|
      t.string :first_name
      t.string :home_city
      t.string :home_state
      t.string :email_address
      t.string :age
      t.string :favorite_category
      t.string :favorite_difficulty
      t.string :motto
      t.integer :total_score
      t.integer :rank
      t.datetime :last_played
      t.integer :total_number_of_rounds_played
    end
  end
end
