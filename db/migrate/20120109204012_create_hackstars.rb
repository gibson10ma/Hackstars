class CreateHackstars < ActiveRecord::Migration
  def change
    create_table :hackstars do |t|
      t.text :profile
      t.string :name
      t.string :twitter
      t.string :email

      t.timestamps
    end
  end
end
