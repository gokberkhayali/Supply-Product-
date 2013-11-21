class CreatePlantations < ActiveRecord::Migration
  def change
    create_table :plantations do |t|
      t.string :Pname
      t.integer :quality
      t.integer :Productid

      t.timestamps
    end
  end
end
