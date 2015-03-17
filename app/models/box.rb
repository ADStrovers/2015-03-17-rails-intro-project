class Box < ActiveRecord::Base
  attr_accessible :color, :start_x_pos, :start_y_pos, :start_x_pos, :start_y_pos,
  belongs_to :canvas
  
end