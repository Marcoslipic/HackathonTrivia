class CreateTrivia < ActiveRecord::Migration[6.0]
  def change
    create_table :trivia do |t|
      t.string :category
      t.string :question
      t.string :correct_answer
      t.json :incorrect_answers

      t.timestamps
    end
  end
end
