class CreateImplementingOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :implementing_offices do |t|
      t.string :office_name

      t.timestamps
    end
  end
end
