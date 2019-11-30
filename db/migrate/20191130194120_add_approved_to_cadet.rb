class AddApprovedToCadet < ActiveRecord::Migration[6.0]
  def self.up
    add_column :cadets, :approved, :boolean, :default => false, :null => false
    add_index  :cadets, :approved
  end

  def self.down
    remove_index  :cadets, :approved
    remove_column :cadets, :approved
  end
end
