class CreateViewSessions < ActiveRecord::Migration
  def change
    create_table :view_sessions do |t|
      t.string :session_id

      t.timestamps
    end
  end
end
