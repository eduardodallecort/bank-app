class RemoveNumberAccountFromAccounts < ActiveRecord::Migration[6.1]
  def change
    remove_column :accounts, :number_acount, :string
  end
end
