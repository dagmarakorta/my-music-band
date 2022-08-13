class CreateBands < ActiveRecord::Migration[7.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :experience_level
      t.string :genre
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
