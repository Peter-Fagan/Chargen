class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :race_id
      t.integer :profession_id
      t.text :background

      t.timestamps null: false
    end
  end
end
