class Experience < ApplicationRecord
  def student
    Student.find_by(id: self.student_id)
  end
end
