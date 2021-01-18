class AddDinosaurBreedIdToDinosaurs < ActiveRecord::Migration[6.1]
  def change
    add_reference :dinosaurs, :dinosaur_breed
  end
end
