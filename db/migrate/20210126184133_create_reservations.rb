class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :comming_date
      t.datetime :leaving_date
      t.belongs_to :user ,foreign_key: true
      t.belongs_to :house, foreign_key: true
      t.timestamps
    end
  end
end
