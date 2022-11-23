class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :salesman_name
      t.integer :salesman_contact
      t.integer :client_id
    end
  end
end
