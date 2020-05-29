class HomeworkDetail < ApplicationRecord
  belongs_to :homework
  belongs_to :user
  resourcify
end
