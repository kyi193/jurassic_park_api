class Dinosaur < ApplicationRecord
  belongs_to :dinosaur_breed
  belongs_to :cage
  validates :name, presence: true
  validate :cage_occupancy_available

  def cage_occupancy_available
    return if cage.max_capacity > cage.dinosaurs.count
    errors.add(:cage, "Cage is at maximum capacity")
  end
end
