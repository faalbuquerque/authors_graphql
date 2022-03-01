class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles, id: :uuid do |t|
      t.string :title
      t.text :description
      t.date :release_date
      t.references :author, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
