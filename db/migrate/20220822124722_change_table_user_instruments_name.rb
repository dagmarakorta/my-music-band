class ChangeTableUserInstrumentsName < ActiveRecord::Migration[7.0]
  def change
    rename_table :table_user_instruments, :user_instruments
  end
end
