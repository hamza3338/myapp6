class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_reference :sales, :patient
    add_index(:clients, :number)
    create_join_table(:assemblies, :parts)
  end
end
