class Cage < ApplicationRecord
  belongs_to :cage_status
  has_many :dinosaurs
  validates :max_capacity, presence: true
  scope :filter_by_max_capacity, -> (max_capacity) { where max_capacity: max_capacity }
  scope :filter_by_cage_status, -> (cage_status) { joins(:cage_status).where(cage_status:{name: cage_status}) }
end
