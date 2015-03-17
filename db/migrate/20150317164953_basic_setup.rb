class BasicSetup < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.text :username
      t.text :name
      t.text :password
      
      t.timestamps
    end
    
    create_table :canvases do |t|
      t.text :name
      t.integer :user_id
      
      t.timestamps
    end
    
    create_table :boxes do |t|
      t.text :color
      t.integer :border_width
      t.integer :start_x_pos
      t.integer :start_y_pos
      t.integer :end_x_pos
      t.integer :end_y_pos
      t.integer :canvas_id
    end
  end

  def down
  end
end
