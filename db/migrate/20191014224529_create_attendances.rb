class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :cadetID
      t.datetime :eventDate
      t.boolean :attendance

      t.timestamps
    end
  end
end
