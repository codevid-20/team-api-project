class Skill < ApplicationRecord
  belongs_to :student
  def student
    Student.find_by(id: self.student_id)
  end
end
