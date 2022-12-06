class AddColumnsToUsersTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :contact, :integer,  numericality: true, precision: 11
    add_column :users, :first_name, :string, maximum: 10
    add_column :users, :second_name, :string,  maximum: 10
  end
end
