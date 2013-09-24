class AddPreviousToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :previous, :string
  end
end
