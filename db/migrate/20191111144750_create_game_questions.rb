class CreateGameQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :game_questions do |t|
      t.integer :game_id
      t.integer :question_id
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
