class Display < ActiveRecord::Base
  attr_accessible :title
  has_many :images
end
