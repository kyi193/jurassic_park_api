class DinosaurBreed < ApplicationRecord
  belongs_to :diet_type
  has_many :dinosaurs
end
