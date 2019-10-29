class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :eventDate
      t.string :primaryType
      t.string :subType
      t.string :details

      t.timestamps
    end
  end
end