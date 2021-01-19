class Cage < ApplicationRecord
  belongs_to :cage_status
  has_many :dinosaurs
  validates :max_capacity, presence: true
end
