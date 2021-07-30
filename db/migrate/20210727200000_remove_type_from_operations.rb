class RemoveTypeFromOperations < ActiveRecord::Migration[6.1]
  def change
    remove_column :operations, :type, :string
  end
end
