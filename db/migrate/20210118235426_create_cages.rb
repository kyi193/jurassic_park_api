class CreateCages < ActiveRecord::Migration[6.1]
  def change
    create_table :cages do |t|
      t.integer :max_capacity
      t.integer :num_of_dinosaurs

      t.timestamps
    end
  end
end
