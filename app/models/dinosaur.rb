class Dinosaur < ApplicationRecord
  belongs_to :dinosaur_breed
  belongs_to :cage
  validates :name, presence: true
  validate :cage_occupancy_available
  validate :cage_is_active
  validate :dinosaur_breed_is_valid
  validate :carnivore_breed_is_valid
  scope :filter_by_breed, -> (dinosaur_breed) { joins(:dinosaur_breed).where(dinosaur_breed:{name: dinosaur_breed})}

  def cage_occupancy_available
    return if cage.max_capacity > cage.dinosaurs.count
    errors.add(:cage, "Cage is at maximum capacity")
  end

  def cage_is_active
    return if cage.cage_status.name == "ACTIVE"
    errors.add(:cage, "Cage status is DOWN")
  end

  def dinosaur_breed_is_valid
    return if cage.dinosaurs.count == 0
    return if (cage.dinosaurs[0].dinosaur_breed.diet_type.name == dinosaur_breed.diet_type.name)
    errors.add(:cage, "Cannot mix herbivores with carnivores in same cage")
  end

  def carnivore_breed_is_valid
    return if cage.dinosaurs.count == 0
    return if dinosaur_breed.diet_type.name == "Herbivore"
    return if (cage.dinosaurs[0].dinosaur_breed.name == dinosaur_breed.name)
    errors.add(:cage, "Cannot mix carnivores of different breeds")
  end
end
