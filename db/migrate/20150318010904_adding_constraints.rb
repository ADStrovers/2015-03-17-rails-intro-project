class AddingConstraints < ActiveRecord::Migration
  def up
    change_column_null :users, :password, null: false
    remove_column :users, :username
    remove_column :canvases, :name
    add_column :users, :username, :text, unique: true, null: false
    add_column :canvases, :name, :text, unique: true, null: false
  end

  def down
    change_column_null :users, :password, null: true
    remove_column :users, :username
    remove_column :canvases, :name
    add_column :users, :username, :text, unique: false, null: true
    add_column :canvases, :name, :text, unique: false, null: true
  end
end
