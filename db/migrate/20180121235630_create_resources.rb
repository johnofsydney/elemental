class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.integer :country_id
      t.integer :element_id
      t.integer :quantity
    end
  end
end
