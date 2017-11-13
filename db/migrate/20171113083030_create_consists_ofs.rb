class CreateConsistsOfs < ActiveRecord::Migration[5.1]
  def change
    create_table :consists_ofs do |t|
      t.references :airports, foreign_key: true
      t.references :airline_operators, foreign_key: true

      t.timestamps
    end
  end
end
