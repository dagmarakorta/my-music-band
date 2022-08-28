class ChangeInstrumentsInstrumentToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :instruments, :instrument, :name
  end
end
