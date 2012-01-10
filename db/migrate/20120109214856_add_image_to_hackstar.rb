class AddImageToHackstar < ActiveRecord::Migration
  def self.up
    change_table :hackstars do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :hackstars, :image
  end
end
