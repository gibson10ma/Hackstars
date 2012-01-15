class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :company
      t.string :project
      t.string :timeframe
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end
end
