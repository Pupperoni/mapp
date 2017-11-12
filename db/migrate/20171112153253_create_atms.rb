class CreateAtms < ActiveRecord::Migration[5.1]
  def change
    create_table :atms do |t|
      t.string :atm_type
      t.references :locations, foreign_key: true

      t.timestamps
    end
  end
end
