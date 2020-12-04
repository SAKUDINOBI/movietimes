class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :imdb_id
      t.string :title
      t.integer :year
      t.string :genre
      t.string :director
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
