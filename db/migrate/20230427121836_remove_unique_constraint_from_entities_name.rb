class RemoveUniqueConstraintFromEntitiesName < ActiveRecord::Migration[7.0]
  def change
    remove_index :entities, :name
  end
end
