class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :homeworks
  resourcify
  scope :next_lesson, ->(lesson) { where(number: lesson.number + 1) }

end
