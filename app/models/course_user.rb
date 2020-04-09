class CourseUser < ApplicationRecord
  belongs_to :user
  belongs_to :sourse
end
