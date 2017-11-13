class CreateStartedOns < ActiveRecord::Migration[5.1]
  def change
    create_table :started_ons do |t|
      t.date :project_start_date
      t.references :projects, foreign_key: true

      t.timestamps
    end
  end
end
