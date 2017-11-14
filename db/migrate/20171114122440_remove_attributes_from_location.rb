class RemoveAttributesFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :region, :integer
    remove_column :locations, :province, :string
    remove_column :locations, :city, :string
  end
end
