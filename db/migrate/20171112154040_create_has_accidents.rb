class CreateHasAccidents < ActiveRecord::Migration[5.1]
  def change
    create_table :has_accidents do |t|
      t.references :aircraft, foreign_key: true
      t.references :situation, foreign_key: true

      t.timestamps
    end
  end
end
