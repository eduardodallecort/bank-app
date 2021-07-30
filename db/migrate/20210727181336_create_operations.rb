class CreateOperations < ActiveRecord::Migration[6.1]
  def change
    create_table :operations do |t|
      t.string :type
      t.float :value
      t.date :date
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
