class AddCageStatusIdToCages < ActiveRecord::Migration[6.1]
  def change
    add_reference :cages, :cage_status
  end
end
