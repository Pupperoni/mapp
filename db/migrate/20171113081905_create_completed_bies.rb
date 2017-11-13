class CreateCompletedBies < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_bies do |t|
      t.date :project_end_date
      t.references :projects, foreign_key: true

      t.timestamps
    end
  end
end
