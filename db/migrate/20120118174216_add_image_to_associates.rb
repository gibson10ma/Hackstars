class AddImageToAssociates < ActiveRecord::Migration
  def self.up
     change_table :associates do |t|
       t.has_attached_file :image
     end
   end

   def self.down
     drop_attached_file :associates, :image
   end
end
