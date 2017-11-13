class CreateOperatesIns < ActiveRecord::Migration[5.1]
  def change
    create_table :operates_ins do |t|
      t.references :airline_operators, foreign_key: true
      t.references :locations, foreign_key: true

      t.timestamps
    end
  end
end
