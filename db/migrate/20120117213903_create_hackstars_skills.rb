class CreateHackstarsSkills < ActiveRecord::Migration
  def change
    create_table :hackstars_skills, :id => false do |t|
      t.integer :hackstar_id
      t.integer :skill_id
    end
  end
  
end
