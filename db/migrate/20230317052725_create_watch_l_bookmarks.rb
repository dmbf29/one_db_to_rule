class CreateWatchLBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :watch_l_bookmarks do |t|
      t.string :comment
      t.references :watch_l_movie, null: false, foreign_key: true
      t.references :watch_l_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
