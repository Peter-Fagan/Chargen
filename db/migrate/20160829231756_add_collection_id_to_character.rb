class AddCollectionIdToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :collection_id, :integer
  end
end
