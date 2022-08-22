class RemoveExperienceLevelFromInstruments < ActiveRecord::Migration[7.0]
  def change
    remove_column :instruments, :experience_level
  end
end
