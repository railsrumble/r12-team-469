class RemoveUserIdFromCustomer < ActiveRecord::Migration
  def up
    remove_column :customers, :user_id
  end

  def down
    add_column :customers, :user_id, :string
  end
end
