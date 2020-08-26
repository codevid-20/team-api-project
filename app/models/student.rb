class Student < ApplicationRecord
  has_many :capstones, :educations, :experiences, :skills
end
