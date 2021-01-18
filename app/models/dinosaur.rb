class Dinosaur < ApplicationRecord
  belongs_to :dinosaur_breed
  validates :name, presence: true
end
