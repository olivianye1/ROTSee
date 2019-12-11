class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.date :date_created
      t.date :date_due
      t.string :description
      t.references :cadet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
