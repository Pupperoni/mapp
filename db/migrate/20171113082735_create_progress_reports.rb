class CreateProgressReports < ActiveRecord::Migration[5.1]
  def change
    create_table :progress_reports do |t|
      t.date :report_date
      t.string :report_type
      t.integer :report_count
      t.references :airline_operators, foreign_key: true

      t.timestamps
    end
  end
end
