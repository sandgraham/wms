class CreateJourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :journeys do |t|
      t.references :start_place
      t.references :end_place
      t.date :start_date
      t.date :end_date
      t.boolean :status
      t.text :story

      t.timestamps
    end
  end
end
