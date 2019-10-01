class CreateCadets < ActiveRecord::Migration[6.0]
  def change
    create_table :cadets do |t|
      t.integer :cadetID
      t.string :lastName
      t.string :firstName
      t.string :email
      t.string :phoneNumber
      t.string :school
      t.string :position
      t.string :course
      t.integer :gradYear
      t.string :flight
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
