class AddExperienceLevelColumnToUserInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :user_instruments, :experience_level, :integer
  end
end
