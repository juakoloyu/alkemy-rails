class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :image
      t.string :title
      t.integer :score

      t.timestamps
    end
  end
end
