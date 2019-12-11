class AddCompletedToTask < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :completed, :integer
  end
end
