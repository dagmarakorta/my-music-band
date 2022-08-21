class CreateTableUserInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :table_user_instruments do |t|
      t.references :user, foreign_key: true
      t.references :instrument, foreign_key: true
      t.timestamps
    end
  end
end
