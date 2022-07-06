class CreatePrescriptionMedicine < ActiveRecord::Migration[6.1]
  def change
    create_table :prescription_medicines do |t|
      t.references :prescription, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true
      t.integer :discount
      t.timestamps
    end
  end
end
