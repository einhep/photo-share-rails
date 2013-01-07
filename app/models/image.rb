class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :file
  has_attached_file :file
  belongs_to :display
  validates :display_id, :presence => true
end
