class AddIdsToUserModel < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :organization_id, :integer
    add_column :users, :account_id, :integer
  end
end
