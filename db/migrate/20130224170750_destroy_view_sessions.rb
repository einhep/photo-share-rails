class DestroyViewSessions < ActiveRecord::Migration
  def up
  	drop_table :view_sessions
  end

  def down
  end
end
