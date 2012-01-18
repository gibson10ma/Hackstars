class CreateAssociates < ActiveRecord::Migration
  def change
    create_table :associates do |t|
      t.string :name
      t.text :profile
      t.string :twitter
      t.string :email

      t.timestamps
    end
  end
end
