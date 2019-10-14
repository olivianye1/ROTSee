class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :eventID
      t.datetime :eventDate
      t.text :primaryType
      t.text :subType
      t.text :details

      t.timestamps
    end
  end
end
