class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :file
  has_attached_file :file
end
