class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :course
  resoucify
end
