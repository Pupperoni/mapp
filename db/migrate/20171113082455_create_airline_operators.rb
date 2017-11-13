class CreateAirlineOperators < ActiveRecord::Migration[5.1]
  def change
    create_table :airline_operators do |t|
      t.string :operator_name

      t.timestamps
    end
  end
end
