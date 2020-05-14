class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :homeworks
  resourcify
end
