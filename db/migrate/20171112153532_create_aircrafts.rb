class CreateAircrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :aircrafts do |t|
      t.string :aircraft_registration
      t.string :craft_type

      t.timestamps
    end
  end
end
