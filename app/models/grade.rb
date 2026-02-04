class Grade < ApplicationRecord
  belongs_to :submission
  belongs_to :course
  belongs_to :user

  scope :calculate_grades, -> { 
    select('user_id, AVG(score) AS average_grade')
    .group(:user_id)
  }
end