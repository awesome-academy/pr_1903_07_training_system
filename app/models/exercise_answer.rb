class ExerciseAnswer < ApplicationRecord
  belongs_to :exercise
  belongs_to :user
  resourify
end
