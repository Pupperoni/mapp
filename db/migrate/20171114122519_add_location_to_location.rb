class AddLocationToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :location, :string
  end
end
