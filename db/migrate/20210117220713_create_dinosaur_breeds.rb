class CreateDinosaurBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :dinosaur_breeds do |t|
      t.string :name

      t.timestamps
    end
  end
end
