class CreateBuiltIns < ActiveRecord::Migration[5.1]
  def change
    create_table :built_ins do |t|
      t.references :projects, foreign_key: true
      t.references :locations, foreign_key: true

      t.timestamps
    end
  end
end
