class Homework < ApplicationRecord
  belongs_to :lesson
  has_one :homework_detail
  resourcify
end
