class AddForeignKeyToHouses < ActiveRecord::Migration[6.1]
  def change
    # add_column :houses, :user_id, :integer
    # add_column :houses, :category_id, :integer
    add_foreign_key :houses, :categories
    add_foreign_key :houses, :users
  end
end
