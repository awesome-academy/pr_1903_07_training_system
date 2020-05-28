class Course < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_many :course_users
  belongs_to :user
  resourcify
end
