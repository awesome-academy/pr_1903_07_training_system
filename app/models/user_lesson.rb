class UserLesson < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  resoucify
end
