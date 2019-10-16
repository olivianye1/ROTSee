class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.belongs_to :cadet, index: true
      t.belongs_to :event, index: true
      t.integer :cadetID
      t.integer :eventID
      t.boolean :attendance

      t.timestamps
    end
  end
end
