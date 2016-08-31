class CreateStrdecos < ActiveRecord::Migration
  def change
    create_table :strdecos do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :str_bonus
      t.integer :dex_bonus
      t.integer :con_bonus
      t.integer :int_bonus
      t.integer :wis_bonus
      t.integer :cha_bonus
      t.integer :str_save
      t.integer :dex_save
      t.integer :con_save
      t.integer :int_save
      t.integer :wis_save
      t.integer :cha_save

      t.timestamps null: false
    end
  end
end
