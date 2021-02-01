class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :adresse
      t.integer :contact
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
