class RenameEntitysGroupsToEntitiesGroups < ActiveRecord::Migration[7.0]
  def change
    rename_table :entitys_groups, :entities_groups
  end
end
