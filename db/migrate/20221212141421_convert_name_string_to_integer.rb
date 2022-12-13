class ConvertNameStringToInteger < ActiveRecord::Migration[6.0]
  def down
    change_column :projects, :name, :integer
  end
end
