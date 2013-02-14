class Display < ActiveRecord::Base
  attr_accessible :title, :id
  has_many :images, :dependent => :destroy
end
