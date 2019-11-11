class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :genre
      t.string :first_gif
      t.string :second_gif
      t.string :title

      t.timestamps
    end
  end
end
