class AddLoginToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :login, :integer
  end
end
