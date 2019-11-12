class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :favorite_movie
      t.string :gif_that_represents_you

      t.timestamps
    end
  end
end
