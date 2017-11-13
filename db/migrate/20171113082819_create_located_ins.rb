class CreateLocatedIns < ActiveRecord::Migration[5.1]
  def change
    create_table :located_ins do |t|
      t.references :airports, foreign_key: true
      t.references :locations, foreign_key: true

      t.timestamps
    end
  end
end
