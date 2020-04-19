class HomeworkDetail < ApplicationRecord
  belongs_to :homework
  belongs_to :exercise
  resourcify
end
