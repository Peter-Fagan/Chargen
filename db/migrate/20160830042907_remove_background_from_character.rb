class RemoveBackgroundFromCharacter < ActiveRecord::Migration
  def change
    remove_column :characters, :background
  end
end
