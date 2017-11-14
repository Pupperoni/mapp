class RemoveAirportRefToSituations < ActiveRecord::Migration[5.1]
  def change
    remove_reference :situations, :airport, foreign_key: true
  end
end
