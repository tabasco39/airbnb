class AddLocationForeignKeyToHouse < ActiveRecord::Migration[6.1]
  def change
    add_column :houses , :location_id, :integer
    add_foreign_key :houses, :locations
  end
end
