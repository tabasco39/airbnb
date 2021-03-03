class CreateCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :charges do |t|
      t.references :reservation, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
