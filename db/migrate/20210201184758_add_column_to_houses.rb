class AddColumnToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :longitude, :float
    add_column :houses, :latitude, :float
  end
end
