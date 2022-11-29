class AddColumnForPolymorphic < ActiveRecord::Migration[6.0]
  def change
    add_belongs_to :sales, :saleable, polymorphic: true
  end
end
