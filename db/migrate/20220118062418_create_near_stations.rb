class CreateNearStations < ActiveRecord::Migration[6.0]
  def change
    create_table :near_stations do |t|
      t.string :station
      t.string :line
      t.string :how_long_time

      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
