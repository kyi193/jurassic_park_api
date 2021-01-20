class RemoveNumOfDinosaursFromCages < ActiveRecord::Migration[6.1]
  def change
    remove_column :cages, :num_of_dinosaurs, :integer
  end
end
