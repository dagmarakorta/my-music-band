class ChangeColumnNameUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :latitude, :lat
    rename_column :users, :longitude, :long
  end
end
