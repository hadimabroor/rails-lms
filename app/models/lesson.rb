class Lesson < ApplicationRecord
  belongs_to :course
  has_many :contents
  acts_as_list scope: :course
end