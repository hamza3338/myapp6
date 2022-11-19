class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :contact_no
      t.integer :age
      t.string :email
      t.string :address
    end
  end
end
