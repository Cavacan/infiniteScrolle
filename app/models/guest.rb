class Guest < ApplicationRecord
  belongs_to :user
  has_many :schedules, as: :creator
end
