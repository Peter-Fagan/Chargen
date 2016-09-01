class AddStrdecoIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :strdeco_id, :integer
  end
end
