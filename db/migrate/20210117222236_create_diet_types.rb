class CreateDietTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :diet_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
