class CreateSituations < ActiveRecord::Migration[5.1]
  def change
    create_table :situations do |t|
      t.string :accident_type
      t.string :report_type
      t.string :status
      t.references :airport, foreign_key: true

      t.timestamps
    end
  end
end
