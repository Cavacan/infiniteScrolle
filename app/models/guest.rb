class Guest < ApplicationRecord
  belongs_to :user
  has_many :schedules, as: :creator

  def self.ransackable_attributes(auth_object = nil)
    ["name", "email", "created_at", "updated_at"]
  end

  paginates_per 5
end
