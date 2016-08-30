class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.string :name
      t.text :description
      t.string :background_skills
      t.string :background_languages
      t.text :background_equipment
      t.text :feature
      t.text :characteristics
      t.string :personality_trait
      t.string :ideal
      t.string :bond
      t.string :flaw

      t.timestamps null: false
    end
  end
end
