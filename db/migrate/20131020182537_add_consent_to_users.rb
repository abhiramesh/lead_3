class AddConsentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :consent, :string
  end
end
