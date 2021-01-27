class AddHousesCountToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :houses_count, :integer, :default => 0
  end
end
