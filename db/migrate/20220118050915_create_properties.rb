class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :rent
      t.text :address
      t.string :age
      t.text :remarks

      t.timestamps
    end
  end
end
