class Cage < ApplicationRecord
  belongs_to :cage_status
  has_many :dinosaurs
  validates :max_capacity, presence: true
  scope :filter_by_max_capacity, -> (max_capacity) { where max_capacity: max_capacity }
  scope :filter_by_cage_status, -> (cage_status) { joins(:cage_status).where(cage_status:{name: cage_status}) }
  validate :cage_is_empty_when_power_is_off

  def cage_is_empty_when_power_is_off
    if (cage_status.name == "DOWN" and dinosaurs.count > 0)
      errors.add(:cage, "Cannot power cage down when dinosaurs are present")
    end
  end
end
