class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :comming_date
      t.date :leaving_date
      t.string :guest_name
      t.string :house_owner
      t.references :user , foreign_key: true
      t.references :house , foreign_key: true

      t.timestamps
    end
  end
end
