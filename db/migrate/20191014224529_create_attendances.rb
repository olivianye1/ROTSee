class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :cadetID
      t.integer :eventID
      t.boolean :attendance

      t.timestamps
    end
  end
end
