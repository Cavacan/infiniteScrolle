class Schedule < ApplicationRecord
  belongs_to :creator, polymorphic: true
  has_and_belongs_to_many :lists
end
