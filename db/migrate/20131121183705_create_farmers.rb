class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.integer :Plantationid
      t.string :name
      t.string :surname
      t.string :phone
      t.string :email
      t.text :adress

      t.timestamps
    end
  end
end
