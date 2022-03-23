class CreateCharactersFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :characters_films do |t|
      t.belongs_to :character
      t.belongs_to :film
      t.timestamps
    end
  end
end
