class User < ActiveRecord::Base
  attr_accessible :username, :name, :password, :id
  has_many :canvases
end