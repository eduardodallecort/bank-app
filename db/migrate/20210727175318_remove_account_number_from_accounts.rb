class RemoveAccountNumberFromAccounts < ActiveRecord::Migration[6.1]
  def change
    remove_column :accounts, :account_number, :string
  end
end
