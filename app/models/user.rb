class User < ApplicationRecord
  has_many :guests, dependent: :destroy
  has_many :schedules, as: :creator
  has_many :lists, dependent: :destroy

  enum roll: { admin: 0, general: 1 }
  def self.ransackable_attributes(auth_object = nil)
    ["name", "email", "created_at", "updated_at"]
  end
  paginates_per 5
end
