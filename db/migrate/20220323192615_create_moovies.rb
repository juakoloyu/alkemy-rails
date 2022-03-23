class CreateMoovies < ActiveRecord::Migration[7.0]
  def change
    create_table :moovies do |t|
      t.string :image
      t.string :title
      t.string :score

      t.timestamps
    end
  end
end
