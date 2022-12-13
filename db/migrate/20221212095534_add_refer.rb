class AddRefer < ActiveRecord::Migration[6.0]
  def change
    # add_reference :sales, :project, index: true
    # add_reference :projects, :appointment, index: false
    # add_reference :projects, :appointment, foreign_key: true
    add_index :projects, [:name]
  end
end
