class AddRememberToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :remember, :string
  end
end
