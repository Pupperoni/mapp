class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :region
      t.string :province
      t.string :city

      t.timestamps
    end
    execute "ALTER TABLE words ADD PRIMARY KEY (region,province,city);"
  end
end
