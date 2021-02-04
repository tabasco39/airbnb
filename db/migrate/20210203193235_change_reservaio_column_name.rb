class ChangeReservaioColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :comming_date, :start_time
    rename_column :reservations, :leaving_date, :end_time
  end
end
