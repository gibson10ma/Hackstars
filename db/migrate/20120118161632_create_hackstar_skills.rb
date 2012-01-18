class CreateHackstarSkills < ActiveRecord::Migration
  def change
    create_table :hackstar_skills do |t|
      t.references :hackstar
      t.references :skill
      t.boolean :love

      t.timestamps
    end
    add_index :hackstar_skills, :hackstar_id
    add_index :hackstar_skills, :skill_id
  end
end
