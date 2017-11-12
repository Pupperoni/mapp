class CreateHappenedOns < ActiveRecord::Migration[5.1]
  def change
    create_table :happened_ons do |t|
      t.date :accident_date
      t.references :situation, foreign_key: true

      t.timestamps
    end
  end
end
