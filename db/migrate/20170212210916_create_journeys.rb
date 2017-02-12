class CreateJourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :journeys do |t|
      t.references :place, foreign_key: true
      t.date :when
      t.text :story
      t.integer :status

      t.timestamps
    end
  end
end
