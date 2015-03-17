class User < ActiveRecord::Base
  attr_accessible :username, :name
  has_many :canvases
end