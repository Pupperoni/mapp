class CreateHandledBies < ActiveRecord::Migration[5.1]
  def change
    create_table :handled_bies do |t|
      t.references :projects, foreign_key: true
      t.references :contractors, foreign_key: true

      t.timestamps
    end
  end
end
