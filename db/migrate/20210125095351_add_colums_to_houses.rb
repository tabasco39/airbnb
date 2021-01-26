class AddColumsToHouses < ActiveRecord::Migration[6.1]
  def change
        add_column :houses, :user_id, :integer
        add_column :houses, :category_id, :integer
        add_foreign_key :houses, :category
        add_foreign_key :houses, :user
        
  end
end
