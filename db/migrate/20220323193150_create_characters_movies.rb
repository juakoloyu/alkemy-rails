class CreateCharactersMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :characters_movies do |t|
      t.belongs_to :character
      t.belongs_to :movie
      t.timestamps
    end
  end
end
