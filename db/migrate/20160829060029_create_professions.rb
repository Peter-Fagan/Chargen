class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.string :name
      t.text :description
      t.string :hit_dice
      t.string :saving_throw
      t.text :prof_skills
      t.integer :start_hit_points
      t.string :start_prof_bonus
      t.text :start_features

      t.timestamps null: false
    end
  end
end
