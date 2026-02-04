class Course < ApplicationRecord
  belongs_to :instructor, class_name: 'User'
  has_many :lessons
  has_many :enrollments
  has_many :assignments
  has_many :grades
end
