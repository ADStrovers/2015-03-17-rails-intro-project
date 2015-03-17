class Canvas < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user
  has_many :boxes
  
end