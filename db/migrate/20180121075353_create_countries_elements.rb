class CreateCountriesElements < ActiveRecord::Migration[5.1]
  def change
    create_table :countries_elements do |t|
      t.integer :country_id
      t.integer :element_id
      t.timestamps
    end
  end
end
