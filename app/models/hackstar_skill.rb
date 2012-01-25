class HackstarSkill < ActiveRecord::Base
  belongs_to :hackstar
  belongs_to :skill
  def name
    "#{self.hackstar.name.to_s} #{self.love ? "loves" : "can do" } #{self.skill.name.to_s}"
  end
end
