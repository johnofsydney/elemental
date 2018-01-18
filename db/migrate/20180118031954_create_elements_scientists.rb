class CreateElementsScientists < ActiveRecord::Migration[5.1]
  def change
    create_table :elements_scientists, :id => false do |t|
      t.integer :element_id
      t.integer :scientist_id
      t.timestamps
    end
  end
end
