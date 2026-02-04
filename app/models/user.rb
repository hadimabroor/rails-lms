class User < ApplicationRecord
  # Devise authentication
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enum for roles
  enum role: { student: 0, instructor: 1, admin: 2 }

  # Associations
  has_many :courses
  has_many :enrollments
  has_many :assignments
  has_many :submissions
  has_many :grades

  # Additional validations or methods can be added here
end