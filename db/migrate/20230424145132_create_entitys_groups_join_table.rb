class CreateEntitysGroupsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :entitys_groups, id: false do |t|
      t.belongs_to :entity
      t.belongs_to :group
    end
  end
end
