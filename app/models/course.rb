class Course < ApplicationRecord
  has_many :lessons, dependent: :destroy
  belongs_to :user
  resourcify
end
