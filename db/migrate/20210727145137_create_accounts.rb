class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.date :dt_nasc
      t.string :cpf
      t.string :rg
      t.float :balance
      t.string :account_number
      t.string :password

      t.timestamps
    end
  end
end
