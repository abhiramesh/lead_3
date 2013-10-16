class AddTrustedToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :trusted, :string
  end
end
