class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :title

      t.timestamps
    end
  end
end
