class AddPolymorphicAttrsToComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments
    create_table :articles
    create_table :events
    create_table :news
    add_column :articles, :title, :string
    add_column :events, :title, :string
    add_column :news, :title, :string
    add_column :comments, :commentable_type, :string
    add_column :comments, :commentable_id, :integer
    add_column :comments, :body, :string
  end
end
