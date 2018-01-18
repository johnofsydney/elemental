class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.text :name
      t.text :description
      t.integer :protons
      t.integer :electrons
      t.date :described_date
      t.timestamps
    end
  end
end
