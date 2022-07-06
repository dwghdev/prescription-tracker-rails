class CreateDoctor < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.integer :age
      t.string :gender, null: false
      t.string :phone_no
      t.string :email
      t.string :license_no, null: false, unique: true
      t.references :specialization, null: false, foreign_key: true
      t.timestamps
    end
  end
end
