class CreateMedicine < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.string :name, null: false, unique: true
      t.text :description
      t.decimal :price, null: true, precision: 5, scale: 2
      t.timestamps
    end
  end
end
