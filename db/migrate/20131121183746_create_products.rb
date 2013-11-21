class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Prname

      t.timestamps
    end
  end
end
