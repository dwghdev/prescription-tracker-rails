class CreatePrescription < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.date :date
      t.string :content
      t.decimal :total_cost, precision: 5, scale: 2
      t.references :doctor, null: false, foreign_key: true
      t.timestamps
    end
  end
end
