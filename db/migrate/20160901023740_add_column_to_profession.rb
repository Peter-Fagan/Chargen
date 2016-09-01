class AddColumnToProfession < ActiveRecord::Migration
  def change
    add_column :professions, :start_equipment, :text
  end
end
