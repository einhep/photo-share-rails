class AddDisplayIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :display_id, :integer
  end
end
