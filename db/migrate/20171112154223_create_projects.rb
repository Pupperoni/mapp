class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.float :pcost
      t.string :pstatus
      t.string :pdesc

      t.timestamps
    end
  end
end
