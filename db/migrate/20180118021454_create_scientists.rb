class CreateScientists < ActiveRecord::Migration[5.1]
  def change
    create_table :scientists do |t|
      t.text :name
      t.date :born
      t.date :died
      t.text :city
      t.text :photo
      t.timestamps
    end
  end
end
