class User < ApplicationRecord
  has_many :guests, dependent: :destroy
  has_many :schedules, as: :creator
  has_many :lists, dependent: :destroy

  enum roll: { admin: 0, general: 1 }
end
