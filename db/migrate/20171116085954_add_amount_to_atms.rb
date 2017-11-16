class AddAmountToAtms < ActiveRecord::Migration[5.1]
  def change
    add_column :atms, :amount, :integer
  end
end
