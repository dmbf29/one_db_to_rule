class CreateWatchLMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :watch_l_movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.float :rating

      t.timestamps
    end
  end
end
