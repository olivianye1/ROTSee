class AddPasswordResetToCadets < ActiveRecord::Migration[6.0]
  def change
    add_column :cadets, :password_reset_token, :string
    add_column :cadets, :password_reset_sent_at, :datetime
  end
end
