class AddUniqueIndexToEntityName < ActiveRecord::Migration[7.0]
  def change
    add_index :entitys, :name, unique: true
  end
end
