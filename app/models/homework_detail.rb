class HomeworkDetail < ApplicationRecord
  belongs_to :homework
  belongs_to :exercise
  has_one :homework
  belongs_to :user
  resourcify
end
