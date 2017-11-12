class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations, primary_key: [:region, :province, :city] do |t|
      t.integer :region
      t.string :province
      t.string :city

      t.timestamps
    end
  end
end
