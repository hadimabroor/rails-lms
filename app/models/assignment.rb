class Assignment < ApplicationRecord
  belongs_to :course
  belongs_to :lesson
  has_many :submissions
  has_many :grades
end