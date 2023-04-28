class RenameEntitysToEntities < ActiveRecord::Migration[7.0]
  def change
    rename_table :entitys, :entities
  end
end
