class CreateWikiniArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :wikini_articles do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
