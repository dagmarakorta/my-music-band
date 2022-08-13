class AddUserReferencesToBand < ActiveRecord::Migration[7.0]
  def change
    add_reference :bands, :user, foreign_key: true
  end
end
