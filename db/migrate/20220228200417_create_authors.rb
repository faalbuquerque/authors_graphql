class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto'

    create_table :authors, id: :uuid do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
