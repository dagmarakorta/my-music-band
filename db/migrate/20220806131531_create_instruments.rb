class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :instrument
      t.integer :experience_level

      t.timestamps
    end
  end
end
