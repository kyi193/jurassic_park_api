class AddDietTypeIdToDinosaurBreeds < ActiveRecord::Migration[6.1]
  def change
    add_reference :dinosaur_breeds, :diet_type
  end
end
