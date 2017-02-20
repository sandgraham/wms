class CreateJourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :journeys do |t|
      t.integer :status, default: 0

      t.integer :year

      t.decimal :start_latitude, precision: 10, scale: 6
      t.decimal :start_longitude, precision: 10, scale: 6
      t.string :start_name, limit: 200

      t.decimal :end_latitude, precision: 10, scale: 6
      t.decimal :end_longitude, precision: 10, scale: 6
      t.string :end_name, limit: 200

      t.text :story

      t.timestamps
    end
  end
end
