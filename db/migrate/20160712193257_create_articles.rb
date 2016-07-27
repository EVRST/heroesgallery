class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title_fr
      t.text :content_fr
      t.string :title_en
      t.text :content_en
      t.string :title_nl
      t.text :content_nl

      t.timestamps null: false
    end
  end
end
