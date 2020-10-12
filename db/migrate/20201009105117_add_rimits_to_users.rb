class AddRimitsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :limit, :integer
    add_column :users, :alert, :integer
  end
end
