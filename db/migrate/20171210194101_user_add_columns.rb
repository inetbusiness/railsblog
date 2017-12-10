class UserAddColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :country, :string, null: true
    add_column :users, :country_code, :string, null: true
    add_column :users, :currency, :string, null: true
    add_column :users, :currency_code, :string, null: true
  end
end
