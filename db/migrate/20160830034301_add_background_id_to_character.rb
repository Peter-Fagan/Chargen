class AddBackgroundIdToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :background_id, :integer
  end
end
