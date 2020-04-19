class HomeworkResult < ApplicationRecord
  belongs_to :exercise_answer
  belongs_to :homeworl_detail
  resourcify
end
