class CreateImplementedBies < ActiveRecord::Migration[5.1]
  def change
    create_table :implemented_bies do |t|
      t.references :projects, foreign_key: true
      t.references :implementing_offices, foreign_key: true

      t.timestamps
    end
  end
end
