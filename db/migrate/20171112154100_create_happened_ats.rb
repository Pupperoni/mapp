class CreateHappenedAts < ActiveRecord::Migration[5.1]
  def change
    create_table :happened_ats do |t|
      t.references :situation, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
