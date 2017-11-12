class CreateHasCasualties < ActiveRecord::Migration[5.1]
  def change
    create_table :has_casualties do |t|
      t.integer :no_of_casualties
      t.references :situation, foreign_key: true

      t.timestamps
    end
  end
end
