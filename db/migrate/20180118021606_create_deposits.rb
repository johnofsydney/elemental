class CreateDeposits < ActiveRecord::Migration[5.1]
  def change
    create_table :deposits do |t|
      t.text :name
      t.text :location
      t.integer :quantity
      t.text :units
      t.integer :element_id
      t.timestamps
    end
  end
end
