class HackstarSkill < ActiveRecord::Base
  belongs_to :hackstar
  belongs_to :skill
  def name
    "#{self.hackstar.name} #{self.love ? "loves" : "can do" } #{self.skill.name}"
  end
end
