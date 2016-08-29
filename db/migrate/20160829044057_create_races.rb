class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.text :description
      t.string :ability_increases
      t.string :age
      t.string :alignment
      t.string :size
      t.string :speed
      t.string :languages
      t.text :features

      t.timestamps null: false
    end
  end
end
